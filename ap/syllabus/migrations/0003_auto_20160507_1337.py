# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('syllabus', '0002_auto_20160504_1806'),
    ]

    operations = [
        migrations.AlterField(
            model_name='syllabus',
            name='classSyllabus',
            field=models.ForeignKey(to='schedules.Class'),
        ),
    ]
