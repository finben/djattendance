from django.http import HttpResponse, HttpResponseRedirect
from lifestudies.models import Discipline, Summary
from accounts.models import User, Profile, Trainee, TrainingAssistant
from lifestudies.forms import NewSummaryForm, NewDisciplineForm, EditSummaryForm, HouseDisciplineForm
from django.views.generic import ListView, CreateView, DetailView, FormView, UpdateView, TemplateView
from django.core.urlresolvers import reverse_lazy
from django.forms.formsets import formset_factory
import datetime

class DisciplineListView(ListView):
    template_name = 'lifestudies/discipline_list.html'
    model = Discipline
    context_object_name = 'disciplines'

    #this function is called whenever 'post'
    def post(self, request, *args, **kwargs):
        if 'approve' in request.POST:
            for value in request.POST.getlist('selection'):
                print Discipline.objects.get(pk=value).approveAllSummary()
        if 'delete' in request.POST:
            for value in request.POST.getlist('selection'):
                print Discipline.objects.get(pk=value).delete()
        return self.get(request, *args, **kwargs)

    #profile is the user that's currently logged in
    def get_context_data(self, **kwargs):
        context = super(DisciplineListView, self).get_context_data(**kwargs)
        context['profile'] = self.request.user
        return context


class ReportListView(ListView):
    template_name = 'lifestudies/reportview.html'
    model = Discipline
    context_object_name = 'disciplines'

    #this function is called whenever 'post'
    def post(self, request, *args, **kwargs):
        #turning the 'post' into a 'get'
        return self.get(request, *args, **kwargs)

    #profile is the user that's currently logged in
    def get_context_data(self, **kwargs):
        context = super(ReportListView, self).get_context_data(**kwargs)
        context['profile'] = self.request.user
        if self.request.method == 'POST':
            for discipline in context['object_list']:
                if discipline.pk in self.request.POST:
                    discipline.approveAllSummary
        return context


class DisciplineCreateView(CreateView):
    model = Discipline
    form_class = NewDisciplineForm

    def get_success_url(self):
        return reverse_lazy('discipline-list')


class DisciplineDetailView(DetailView):
    model = Discipline
    context_object_name = 'discipline'

    def transfer(request):
        fromTrainee = Trainee.objects.all().order_by('account')
        output = ', '.join([t.account.lastname for t in fromTrainee])
        return HttpResponse(output)

class SummaryCreateView(CreateView):
    model = Summary
    form_class = NewSummaryForm

    def get_success_url(self):
        return reverse_lazy('discipline-list')

    def get_context_data(self, **kwargs):
        context = super(SummaryCreateView, self).get_context_data(**kwargs)
        return context 

    def form_valid(self, form):
        summary = form.save(commit=False)
        summary.discipline = Discipline.objects.get(pk=self.kwargs['pk'])
        summary.date_submitted = datetime.datetime.now()
        summary.save()
        return super(SummaryCreateView, self).form_valid(form)

"""this is the view that TA will click into when viewing a summary and approving it"""
class SummaryApproveView(DetailView):
    model = Summary
    context_object_name = 'summary'
    template_name = 'lifestudies/summary_approve.html'

    def post(self, request, *args, **kwargs):
        self.get_object().approve()
        return HttpResponseRedirect(reverse_lazy('discipline-list'))


"""this is the view that trainee click into in order to update the content of the summary"""
class SummaryUpdateView(UpdateView):
    model = Summary
    context_object_name = 'summary'
    template_name = 'lifestudies/summary_detail.html'
    fields = ['content']
    form_class = EditSummaryForm
        
    #profile is the user that's currently logged in
    def get_context_data(self, **kwargs):
        context = super(SummaryUpdateView, self).get_context_data(**kwargs)
        context['profile'] = self.request.user
        print self.request.POST
        return context

    def get_success_url(self):
        return reverse_lazy('discipline-list')


class CreateHouseDiscipline(TemplateView):
    template_name = 'lifestudies/discipline_house.html'

    def get_context_data(self, **kwargs):
        context = super(CreateHouseDiscipline, self).get_context_data(**kwargs)
        context['form'] = HouseDisciplineForm()
        return context
    def post(self, request, *args, **kwargs):
        if request.method == 'POST':
            form = HouseDisciplineForm(request.POST)
            if form.is_valid():
                listTrainee = form.cleaned_data['House'].trainee_set.all()
                #creating the lifestudy for each trainee manually
                for trainee in listTrainee:
                    print trainee.pk
                    discipline = Discipline(infraction=form.cleaned_data['infraction'],
                                          quantity=form.cleaned_data['quantity'],
                                          due=form.cleaned_data['due'],
                                          offense=form.cleaned_data['offense'],
                                          trainee=trainee)
                    discipline.save()
                return HttpResponseRedirect(reverse_lazy('discipline-list'))
        else:
            form = HouseDisciplineForm()

        return HttpResponseRedirect(reverse_lazy('discipline-list'))

