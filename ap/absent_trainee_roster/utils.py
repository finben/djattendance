from datetime import date, timedelta, datetime

import cStringIO as StringIO
import xhtml2pdf.pisa as pisa
from django.template.loader import get_template
from django.template import loader, Context
from django.core.mail import EmailMessage
from django.conf import settings # to get admin email addresses
from django.http import HttpResponse
from django.db.models import Prefetch
from cgi import escape

from .models import Roster
from accounts.models import User
from absent_trainee_roster.models import Entry

from collections import Counter



def get_or_create_roster(d):
  if Roster.objects.filter(date=d).exists():
    roster = Roster.objects.get(date=d)
  else:
    print 'WARNING: No Roster was made today, creating an empty one for reporting'
    roster = Roster.objects.create_roster(date=d)
    roster.save()

  return roster

def build_report_ctx(date):
  roster = get_or_create_roster(date)
  entries = roster.entry_set.all().order_by('-absentee')

  bro_entries = roster.entry_set.filter(absentee__gender='B').order_by('absentee__firstname', 'absentee__lastname')
  sis_entries = roster.entry_set.filter(absentee__gender='S').order_by('absentee__firstname', 'absentee__lastname')
  bro_unreported_houses = roster.unreported_houses.filter(gender='B')
  sis_unreported_houses = roster.unreported_houses.filter(gender='S')

  trainee_absent_freq = calculate_trainee_absent_freq(date)
  unreported_list = list_unreported_houses(date)

  return {
    'pagsize': 'letter',
    'roster': roster,
    'bro_entries': bro_entries,
    'sis_entries': sis_entries,
    'genders': User.GENDER,
    'bro_unreported_houses': bro_unreported_houses,
    'sis_unreported_houses': sis_unreported_houses,
    'trainee_absent_freq': trainee_absent_freq,
    'unreported_list': unreported_list,
  }

def generate_pdf(year, month, day):
  #Retrieve data or whatever you need
  d = date(int(year),int(month),int(day))
  ctx = build_report_ctx(d)

  return render_to_pdf(
    'absent_trainee_roster/generate_roster.html',
    ctx
  )

def render_to_pdf(template_src, context_dict):
    template = get_template(template_src)
    html  = template.render(context_dict)
    result = StringIO.StringIO()

    pdf = pisa.pisaDocument(StringIO.StringIO(html.encode("UTF-8")), result)

    if not pdf.err:
        return HttpResponse(result.getvalue(), content_type='application/pdf')
    return HttpResponse('We had some errors<pre>%s</pre>' % escape(html))


# calculate how many consecutive days a trainee has been absent going back from today's absence
# Returns: {trainee.id: absent_count,}
def calculate_trainee_absent_freq(date):
  oneday = timedelta(1)
  # Get absentees
  absent_tb = Counter()
  roster = get_or_create_roster(date)

  entries = roster.entry_set.prefetch_related('absentee', Prefetch('absentee__entry_set', queryset=Entry.objects.order_by('-roster__date'), to_attr='sorted_entries'))

  for absent_entry in entries:
    absentee = absent_entry.absentee
    a_entries = absentee.sorted_entries

    # Get first one out
    last_absent_entry = None

    for entry in a_entries:
      # if first time or difference is only 1 day, consecutive backwards in time
      if not last_absent_entry or last_absent_entry.roster.date - entry.roster.date == oneday:
        absent_tb[absentee.id] += 1
        last_absent_entry = entry
      else:
        # break out when discontinuity found
        break

  return absent_tb

#makes list of trainee houses that are unreported within the last 7 days
def list_unreported_houses(date):
  list = []

  roster = get_or_create_roster(date)
  for house in roster.unreported_houses.all():
    if house not in list:
      list.append(house)

  return list


#sends absent trainee roster to admins
def send_absentee_report(year, month, day):
  d = date(int(year),int(month),int(day))
  ctx = build_report_ctx(d)

  subject = "Absent Trainee Roster for " + str(d)
  email_template = loader.get_template('absent_trainee_roster/generate_roster.html')
  context = Context(ctx)

  recipients_emails = settings.ABSENTEE_ROSTER_RECIPIENTS
  email = EmailMessage(subject, email_template.render(context), settings.SERVER_EMAIL, recipients_emails)
  email.content_subtype ="html"
  pdf_data = generate_pdf(year, month, day)
  email.attach('roster.pdf', pdf_data.content, 'application/pdf')
  email.send(fail_silently=False)

  print 'Absentee report email sent', datetime.now()

def test_send_absentee_report():
  from datetime import date
  t = date.today()
  send_absentee_report(t.year, t.month, t.day)
