from django import forms

from .models import WebRequest

from functools import partial
from datetime import datetime

DateInput = partial(forms.DateInput, {'class': 'datepicker'})


class WebAccessRequestCreateForm(forms.ModelForm):

    date_expire = forms.DateField(widget=DateInput())

    def clean_date_expire(self):
        """ Invalid form if date expire is earlier than today """
        data = self.cleaned_data['date_expire']
        if datetime.now().date() > data:
            raise forms.ValidationError("Date expire has already passed.")
        return data

    class Meta:
        model = WebRequest
        fields = ['reason', 'minutes', 'date_expire', 'comments']


class WebAccessRequestTACommentForm(forms.ModelForm):

    class Meta:
        model = WebRequest
        fields = ['TA_comments']
