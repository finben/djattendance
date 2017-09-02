import cStringIO as StringIO

from django.template.defaulttags import register
from django.template import Context
from django.template.loader import get_template
from django.http import HttpResponse
from django.conf import settings

import xhtml2pdf.pisa as pisa
from cgi import escape
import time

# !! IMPORTANT: Keep this file free from any model imports to avoid cyclical dependencies!!

import functools

def memoize(obj):
  cache = obj.cache = {}

  @functools.wraps(obj)
  def memoizer(*args, **kwargs):
      key = str(args) + str(kwargs)
      if key not in cache:
          cache[key] = obj(*args, **kwargs)
      return cache[key]
  return memoizer

def link_callback(uri, rel):
  """
  Convert HTML URIs to absolute system paths so xhtml2pdf can access those
  resources
  """
  # use short variable names
  sUrl = settings.STATIC_URL      # Typically /static/
  sRoot = settings.STATIC_ROOT    # Typically /home/userX/project_static/
  mUrl = settings.MEDIA_URL       # Typically /static/media/
  mRoot = settings.MEDIA_ROOT     # Typically /home/userX/project_static/media/

  # convert URIs to absolute system paths
  if uri.startswith(mUrl):
    path = os.path.join(mRoot, uri.replace(mUrl, ""))
  elif uri.startswith(sUrl):
    path = os.path.join(sRoot, uri.replace(sUrl, ""))
  else:
    return uri  # handle absolute uri (ie: http://some.tld/foo.png)

  # make sure that file exists
  if not os.path.isfile(path):
    raise Exception(
      'media URI must start with %s or %s' % (sUrl, mUrl)
    )
  return path

def render_to_pdf(template_src, context_dict):
  template = get_template(template_src)
  html = template.render(context=context_dict)
  result = StringIO.StringIO()

  pdf = pisa.pisaDocument(StringIO.StringIO(html.encode("UTF-8")), result, link_callback=link_callback)
  if not pdf.err:
    return HttpResponse(result.getvalue(), content_type='application/pdf')
  return HttpResponse('We had some errors<pre>%s</pre>' %escape(html))

COMMA_REGEX = r'^{0},|,{0},|,{0}$|^{0}$'

def comma_separated_field_is_in_regex(list):
  regs = []
  for item in list:
    regs.append(COMMA_REGEX.format(item))
  reg_str = '|'.join(regs)

  return reg_str

@register.filter
def has_attr(model_obj, attr):
  if hasattr(model_obj, attr):
    return True
  return False

@register.filter
def get_item(dictionary, key):
    return dictionary.get(key)

def sorted_user_list_str(users):
  return ', '.join([u.full_name for u in users.order_by('firstname', 'lastname')])

# Method to get value from dictionary in template
# Use: dictionary|get_item:key
@register.filter
def get_item(dictionary, key):
  return dictionary.get(key)

# Search for item in a list
@register.filter
def lookup(list, key):
  for l in list:
    if l == key:
      return l
  return None


WEEKDAY_CODE = {
  0: 'M',
  1: 'T',
  2: 'W',
  3: 'Th',
  4: 'F',
  5: 'S',
  6: 'LD',
}

@register.filter
def weekday_code(day):
  return WEEKDAY_CODE[day]

WEEKDAYS = {
  0: 'Monday',
  1: 'Tuesday',
  2: 'Wednesday',
  3: 'Thursday',
  4: 'Friday',
  5: 'Saturday',
  6: "Lord's Day",
}

@register.filter
def weekday_name(day):
  return WEEKDAYS[day]

@register.filter
def worker_list(workers):
  return ', '.join([w.full_name for w in workers])

@register.filter
def input_worker_list(workers):
  return ','.join([w.full_name for w in workers])

@register.filter
def input_workerID_list(workers):
  return ','.join([str(w.id) for w in workers])

# Timer decorator
def timeit(method):
  def timed(*args, **kw):
    ts = time.time()
    result = method(*args, **kw)
    te = time.time()

    print '%r %2.2f sec' % (method.__name__, te-ts)
    return result

  return timed

class timeit_inline(object):
  def __init__(self, title=""):
    self.title = title

  def start(self):
    print self.title
    self.ts = time.time()

  def end(self):
    self.te = time.time()
    print '%s %2.2f sec' % (self.title, self.te-self.ts)
