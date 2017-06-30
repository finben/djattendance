from django.db import models

from rooms.models import Room
from accounts.models import User, Trainee, TrainingAssistant
from terms.models import Term

""" ROOM RESERVATIONS models.py

The ROOMS RESERVATIONS app represents reservations that are made for the various loations of the training. They are made by trainees or TA's and approved by TA's. Both trainees and TA's use the reservation schedule generated by this app.

Data Models:
    - RoomReservation: a reservation for a particular room at a given time.

"""

class RoomReservation(models.Model):

    RES_STATUS = (
        ('P', 'Pending'),
        ('A', 'Approved'),
        ('D', 'Denied'),
        ('F', 'Fellowship'),
    )

    RES_FREQ = (
        ('O', 'Reserve Once'),
        ('A', 'Reserve for the entire term'),
    )

    # Until Rooms Models is made use this

    RES_ROOMS = (
        ('MC', 'classroom'),
        ('NE209', 'NE209'),
        ('NE3', 'NE3'),
    )


    #trainee submitting the request
    trainee = models.ForeignKey(Trainee, related_name='%(class)ss')

    #description of the group using the room
    group = models.CharField(max_length=30)

    #date requesting
    date = models.DateField()

    #start time
    start = models.TimeField()

    #end time
    end = models.TimeField()

    #room being requested
    room = models.CharField(max_length=9, choices=RES_ROOMS)
    # room = models.ForeignKey(Room)

    #size of group
    group_size = models.IntegerField(default=25)

    #frequency - once or recurring
    frequency = models.CharField(max_length=30, choices=RES_FREQ, default='O')

    #reservation approval status
    status = models.CharField(max_length=2, choices=RES_STATUS, default='P')

    #reason for reservation
    reason = models.CharField(max_length=100)

    def get_absolute_url(self):
        return reverse('room_reservations:room-reservation-submit', kwargs={'pk':self.id})

