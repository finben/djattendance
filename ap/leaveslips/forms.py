from django import forms

from accounts.widgets import TraineeSelect2MultipleInput
from django_select2.forms import ModelSelect2MultipleWidget, ModelSelect2Widget
from .models import IndividualSlip, GroupSlip
from accounts.models import Trainee, TrainingAssistant
from services.models import Assignment

TA_PAIRINGS = {
    TrainingAssistant.objects.get(lastname="Chumreonlert"): TrainingAssistant.objects.get(lastname="Hale"),
    TrainingAssistant.objects.get(lastname="Miao"): TrainingAssistant.objects.get(lastname="Bang"),
    TrainingAssistant.objects.get(lastname="Macaranas"): TrainingAssistant.objects.get(lastname="Deng"),
    TrainingAssistant.objects.get(lastname="Buntain"): TrainingAssistant.objects.get(lastname="Li"),
    TrainingAssistant.objects.get(lastname="Uy"): TrainingAssistant.objects.get(lastname="Li"),
}


class LeaveslipForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    user = kwargs.pop("user")
    super(LeaveslipForm, self).__init__(*args, **kwargs)
    default_transfer_ta = user
    if user.gender == 'S':
      default_transfer_ta == TA_PAIRINGS[user]
    self.fields['type'].label = 'Reason'
    self.fields['TA'].label = 'TA Assigned to this leave slip: %s' % default_transfer_ta.full_name
    self.fields['TA_informed'].label = 'Training office informed? ' + ('Yes' if self.instance.informed else 'No')
    self.fields['description'].widget.attrs['rows'] = 4
    self.fields['private_TA_comments'].widget.attrs['rows'] = 4
    self.fields['comments'].widget.attrs['rows'] = 4


class IndividualSlipForm(LeaveslipForm):
  def __init__(self, *args, **kwargs):
    super(IndividualSlipForm, self).__init__(*args, **kwargs)

  class Meta:
    model = IndividualSlip
    fields = ['trainee', 'type', 'description', 'private_TA_comments', 'comments', 'TA_informed', 'texted', 'TA']


class GroupSlipForm(LeaveslipForm):
  trainees = forms.ModelMultipleChoiceField(
      queryset=Trainee.objects.all(),
      required=True,
      widget=ModelSelect2MultipleWidget(model=Trainee),
  )

  def __init__(self, *args, **kwargs):
    super(GroupSlipForm, self).__init__(*args, **kwargs)

  class Meta:
    model = GroupSlip
    fields = ['trainees', 'type', 'description', 'private_TA_comments', 'comments', 'start', 'end', 'TA_informed', 'texted', 'TA']


class GroupSlipAdminForm(forms.ModelForm):
  trainees = forms.ModelMultipleChoiceField(
      queryset=Trainee.objects.all(),
      label='Trainees',
      required=False,
      widget=TraineeSelect2MultipleInput,
  )

  service_assignment = forms.ModelChoiceField(
      label='Service Assignment',
      queryset=Assignment.objects.all(),
      required=False,
      widget=ModelSelect2Widget(
          model=Assignment,
          search_fields=['service__name__icontains'],
      ),
  )

  def __init__(self, *args, **kwargs):
    super(GroupSlipAdminForm, self).__init__(*args, **kwargs)
