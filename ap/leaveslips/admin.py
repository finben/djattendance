from django import forms
from django.contrib import admin
from django.contrib.admin import SimpleListFilter
from django.utils.translation import ugettext_lazy as _

from leaveslips.models import LeaveSlip, IndividualSlip, GroupSlip
from django_select2.forms import ModelSelect2MultipleWidget
from accounts.models import Trainee


class ApproveFilter(SimpleListFilter):
  #Filters to separate approved from unfinalized leaveslips
  title = _('Approved')

  parameter_name = 'approved'

  def lookups(self, request, model_admin):
    """
    Returns a list of tuples. The first element in each tuple is the coded value
    for the option that will appear in the URL query. The second element is the human-
    readable name for the option that will appear in the right sidebar.
    """
    return (
      ('A', _('Approved')),
      ('P', _('Other')),
    )

  def queryset(self, request, queryset):
    """
    """
    if self.value() == 'A':
      """queryset of approved leaveslips """
      q=queryset.filter(status='A')
      return q

    if self.value() == 'P':
      """queryset of pending leaveslips """
      q=queryset.exclude(status='A')
      return q

def make_approved(modeladmin, request, queryset):
  queryset.update(status='A')
make_approved.short_description = "Approve selected leaveslips"


def mark_for_fellowship(modeladmin, request, queryset):
  queryset.update(status='F')
mark_for_fellowship.short_description = "Mark selected leaveslips for fellowship"


def make_denied(modeladmin, request, queryset):
  queryset.update(status='D')
make_denied.short_description = "Deny selected leaveslips"


class IndividualSlipAdmin(admin.ModelAdmin):
  fieldsets = (
    (None, {
      'fields': ('trainee', 'type', 'status', 'description', 'comments', 'texted', 'informed', 'rolls','TA',)
    }),
  )
  list_display = ('pk', 'trainee','status','type','submitted','TA','finalized')
  actions = [make_approved, mark_for_fellowship, make_denied]
  list_filter = ( ApproveFilter,'TA',)
  search_fields = ['trainee__account__firstname', 'trainee__account__lastname'] #to search up trainees

class GroupSlipAdminForm(forms.ModelForm):
  trainees = ModelSelect2MultipleWidget(model=Trainee, required=False, search_fields=['^first_name' '^last_name'])

class GroupSlipAdmin(admin.ModelAdmin):
  form = GroupSlipAdminForm
  list_display = ('pk', 'get_trainees','status','type','submitted','TA','finalized')
  actions = [make_approved, mark_for_fellowship, make_denied]
  list_filter = ( ApproveFilter,'TA',)

  def get_trainees(self, obj):
    return ", ".join([t.full_name for t in obj.trainees.all()])

# Register your models here.
admin.site.register(IndividualSlip, IndividualSlipAdmin)
admin.site.register(GroupSlip, GroupSlipAdmin)
