from collections import namedtuple

from django import template
from aputils.trainee_utils import is_trainee, is_TA
from django.core.urlresolvers import reverse
from fobi.models import FormEntry
from form_manager.utils import user_can_see_form
import json


# Type Declarations
def SubMenuItem(name, permission=None, url='#', condition=True, is_fobi=False):
  return namedtuple('SubMenuItem', 'name permission url condition is_fobi')(name=name, permission=permission, url=url, condition=condition, is_fobi=is_fobi)


def MenuItem(name, ta_only=[], trainee_only=[], common=[], specific=[]):
  return namedtuple('MenuItem', 'name ta_only trainee_only common specific')(name=name, ta_only=ta_only, trainee_only=trainee_only, common=common, specific=specific)

register = template.Library()


# Helper Functions
def my_reverse(url_pattern):
  if url_pattern != '#':
    return reverse(url_pattern)
  else:
    return '#'


def smart_add(url, name, is_fobi=False):
  if is_fobi:
    return [(url, name)]
  else:
    path = my_reverse(url)
    return [(path, name)]


def get_fobi_menu_items(user):
  public_FormEntries = FormEntry.objects.filter(is_public=True)
  menu_items = []
  for pf in public_FormEntries:
    if user_can_see_form(user, pf):
      menu_items.append(
        SubMenuItem(name=pf.name, url='/fobi/view/' + pf.slug, is_fobi=True),
      )
  return menu_items


# Generates the menu
@register.assignment_tag(takes_context=True)
def generate_menu(context):

  user = context['user']
  if user.is_anonymous():
    return ""
  menu = ""

  # The sidebar menu items, with their permissions and conditions required, should be input here
  attendance_menu = MenuItem(
      name='Attendance',
      ta_only=[
          SubMenuItem(name='View Leaveslips', url='leaveslips:ta-leaveslip-list')
      ],
      trainee_only=[
          SubMenuItem(name='Personal Attendance', url='attendance:attendance-submit', condition=True)
      ],
      specific=[
          SubMenuItem(name='|', permission='attendance.add_roll', url='#'),
          SubMenuItem(name='Class & Study Roll', permission='attendance.add_roll', url='attendance:class-rolls', condition=user.has_group(['administration', 'attendance_monitors'])),
          SubMenuItem(name='Meal Roll', permission='attendance.add_roll', url='attendance:meal-rolls', condition=user.has_group(['administration', 'attendance_monitors'])),
          SubMenuItem(name='House Roll', permission='attendance.add_roll', url='attendance:house-rolls', condition=user.has_group(['attendance_monitors', 'HC'])),
          SubMenuItem(name='Team Roll', permission='attendance.add_roll', url='attendance:team-rolls', condition=user.has_group(['attendance_monitors', 'team_monitors'])),
          SubMenuItem(name='YPC Roll', permission='attendance.add_roll', url='attendance:ypc-rolls', condition=user.has_group(['attendance_monitors', 'ypc_monitors'])),
          SubMenuItem(name='Audit', permission='attendance.add_roll', url='attendance:audit-rolls', condition=user.has_group(['attendance_monitors']))
      ],
      common=[])

  discipline_menu = MenuItem(
      name='Discipline',
      common=[
          SubMenuItem(name='Life Studies', url='lifestudies:discipline_list'),
          SubMenuItem(name='Class Notes', url='classnotes:classnotes_list')
      ]
  )

  exam_menu = MenuItem(
      name='Exams',
      specific=[
          SubMenuItem(name="Create Exam", permission='exams.add_exam', url='exams:new'),
          SubMenuItem(name="Manage Exams", permission='exams.add_exam', url='exams:manage'),
      ]
  )

  requests_menu = MenuItem(
      name='Requests',
      ta_only=[
          SubMenuItem(name='Room Requests', url='room_reservations:ta-room-reservation-list'),
          SubMenuItem(name='Audio Requests', url='audio:ta-audio-home'),
      ],
      trainee_only=[
          SubMenuItem(name='Room Reservations', url='room_reservations:room-reservation-submit'),
          SubMenuItem(name='Audio Requests', url='audio:audio-home'),
      ],
      common=[
          SubMenuItem(name='Maintenance Requests', url='house_requests:house-requests'),
          SubMenuItem(name='Web Access Requests', url='web_access:web_access-list'),
      ]
  )

  misc_menu = MenuItem(
      name="Misc.",
      common=[
          SubMenuItem(name='Bible Reading Tracker', url='bible_tracker:index'),
      ],
      ta_only=[
          SubMenuItem(name='Create/Approve Announcements', url='announcements:announcement-request-list'),
          SubMenuItem(name='View Announcements', url='announcements:announcement-list'),
          SubMenuItem(name='Create Room Reservations', url='room_reservations:room-reservation-submit'),
          SubMenuItem(name='View Room Reservations', url='room_reservations:room-reservation-schedule'),
          SubMenuItem(name='Create New Form', url='fobi.dashboard')
      ],
      trainee_only=[
          SubMenuItem(name='Create Announcements', url='announcements:announcement-request-list'),
          SubMenuItem(name='View Read Announcements', url='announcements:announcements-read'),
      ],
      specific=[
          SubMenuItem(name='Service Scheduling', permission='services.add_service', url='services:services_view', condition=user.has_group(['service_schedulers'])),
          SubMenuItem(name='Badges', permission='badges.add_badge', url='badges:badges_list', condition=user.has_group(['badges'])),
          SubMenuItem(name="Absent Trainee Roster", permission='absent_trainee_roster.add_roster', url='absent_trainee_roster:absent_trainee_form', condition=user.has_group(['absent_trainee_roster'])),
          SubMenuItem(name='Meal Seating', permission='meal_seating.add_table', url='meal_seating:new-seats', condition=user.has_group(['kitchen'])),
          SubMenuItem(name='Seating Chart', permission='seating.add_chart', url='seating:chart_list', condition=user.has_group(['attendance_monitors'])),
          SubMenuItem(name='Audio Upload', permission='audio.add_audiofile', url='audio:audio-upload', condition=user.has_group(['av'])),
      ]
  )

  # For every 'current' item that needs to appear in the side-bar, ie exams to be taken, iterim intentions form, exit interview, etc, the context variable needs to be added to the context, and the menu item can be added here as follows
  current_menu = MenuItem(
      name='Current',
      common=[
      ] + get_fobi_menu_items(user),
      trainee_only=[
          SubMenuItem(name="Take Exam", url='exams:list', condition=context['exams_available']),
      ]
  )

  user_menu = [attendance_menu, discipline_menu, requests_menu, exam_menu, misc_menu, current_menu]

  for menu_item in user_menu:
    items = []
    if menu_item.common:
      for sub_item in menu_item.common:
        if sub_item.condition:
          items += smart_add(sub_item.url, sub_item.name, sub_item.is_fobi)
    if menu_item.ta_only:
      if is_TA(user):
        for sub_item in menu_item.ta_only:
          if sub_item.condition:
            items += smart_add(sub_item.url, sub_item.name)
    if menu_item.trainee_only:
      if is_trainee(user):
        for sub_item in menu_item.trainee_only:
          if sub_item.condition:
            items += smart_add(sub_item.url, sub_item.name)
    if menu_item.specific:
      for specific_perm_item in menu_item.specific:
        if specific_perm_item.permission in context['perms']:
          if specific_perm_item.condition:
            items += smart_add(specific_perm_item.url, specific_perm_item.name)
    if items:
      menu += "<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">" + menu_item.name + "<span class=\"caret\"></span></a><ul class=\"dropdown-menu\">"
      for (path, name) in items:
        if name == '|':
          menu += "<li role=\"separator\" class=\"divider\"></li>"
        else:
          menu += "<li><a href=\"" + path + "\">" + name + "</a></li>"
      menu += "</ul>"
  return menu
