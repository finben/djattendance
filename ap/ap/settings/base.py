# Django settings for AP
from __future__ import absolute_import

import os
import django
from django.contrib.messages import constants as message_constants

# calculated paths for django and the site
# used as starting points for various other paths
DJANGO_ROOT = os.path.dirname(os.path.realpath(django.__file__))
SITE_ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.realpath(__file__))))

# List of emails to send absentee roster reports to every morning
ABSENTEE_ROSTER_RECIPIENTS = ['attendanceproj@gmail.com',]

ADMINS = (
  ('Attendance Project', 'attendanceproj@gmail.com'),
)

MANAGERS = ADMINS

# Hosts/domain names that are valid for this site; required if DEBUG is False
# See https://docs.djangoproject.com/en/1.5/ref/settings/#allowed-hosts
ALLOWED_HOSTS = []

# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# In a Windows environment this must be set to your system time zone.
TIME_ZONE = 'America/Los_Angeles'

# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-us'

SITE_ID = 1

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = False

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale.
USE_L10N = True

# If you set this to False, Django will not use timezone-aware datetimes.
USE_TZ = False # djattendance (for now) only runs in Anaheim.

# Absolute filesystem path to the directory that will hold user-uploaded files.
# Example: "/var/www/example.com/media/"
MEDIA_ROOT = os.path.join(SITE_ROOT, 'media')

# Temporary folder for upload, in this example is the subfolder 'upload'
UPLOAD_TO = os.path.join(SITE_ROOT, 'media', 'upload')

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash.
# Examples: "http://example.com/media/", "http://media.example.com/"
MEDIA_URL = '/media/'

# Absolute path to the directory static files should be collected to.
# Don't put anything in this directory yourself; store your static files
# in apps' "static/" subdirectories and in STATICFILES_DIRS.
# Example: "/var/www/example.com/static/"
STATIC_ROOT = ''

# URL prefix for static files.
# Example: "http://example.com/static/", "http://static.example.com/"
STATIC_URL = '/static/'

# Additional locations of static files
STATICFILES_DIRS = (
  # Put strings here, like "/home/html/static" or "C:/www/django/static".
  # Always use forward slashes, even on Windows.
  # Don't forget to use absolute paths, not relative paths.
  os.path.join(SITE_ROOT, 'static'),
)

# List of finder classes that know how to find static files in
# various locations.
STATICFILES_FINDERS = (
  'django.contrib.staticfiles.finders.FileSystemFinder',
  'django.contrib.staticfiles.finders.AppDirectoriesFinder',
#  'django.contrib.staticfiles.finders.DefaultStorageFinder',
)

# Make this unique, and don't share it with anybody.
SECRET_KEY = 'h%)g$1=j)_(lozsexfe*=$iwj9l#8mfaszohyg5n0azz691r#b'

MIDDLEWARE = (
  'django.contrib.sessions.middleware.SessionMiddleware',
  'django.middleware.common.CommonMiddleware',
  'django.middleware.csrf.CsrfViewMiddleware',
  'django.contrib.auth.middleware.AuthenticationMiddleware',
  'django.contrib.messages.middleware.MessageMiddleware',
  # Uncomment the next line for simple clickjacking protection:
  'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'ap.urls'

# Python dotted path to the WSGI application used by Django's runserver.
WSGI_APPLICATION = 'ap.wsgi.application'

TEMPLATES = [{
  'BACKEND': 'django.template.backends.django.DjangoTemplates',
  'DIRS': [os.path.join(SITE_ROOT, 'templates')],
  'OPTIONS': {
    'loaders': [
      ('django.template.loaders.cached.Loader',
        [
          'django.template.loaders.filesystem.Loader',
          'django.template.loaders.app_directories.Loader'
        ]
      ),
    ],
    'context_processors': [
      "django.contrib.auth.context_processors.auth",
      "django.template.context_processors.debug",
      "django.template.context_processors.media",
      "django.contrib.messages.context_processors.messages",
      "django.template.context_processors.request",
      "exams.context_processors.exams_available",
      "announcements.context_processors.class_popup",

      "django.template.context_processors.i18n",
      "django.template.context_processors.static",
      "django.template.context_processors.tz",
      "sekizai.context_processors.sekizai",
    ],
  },
}]

DATABASES = {
  'default': {
    'ENGINE': 'django.db.backends.postgresql_psycopg2',
    'NAME': '',
    'USER': '',
    'PASSWORD': '',
    'HOST': 'localhost',
    'PORT': '',
  }
}

AUTH_USER_MODEL = 'accounts.User'

# Make logins case-insensitive
AUTHENTICATION_BACKENDS = (
  'aputils.backends.CaseInsensitiveModelBackend',
)

APPS = (
  # ap CORE
  'accounts',
  'apimport',
  'aputils',
  'books',
  'classes',
  'houses',
  'localities',
  'rooms',
  'services',
  'teams',
  'terms',

  # ap modules
  'announcements',  # announcements
  'attendance',
  'audio',
  'absent_trainee_roster',
  'badges',  # badge pictures and facebooks
  'bible_tracker',
  'classnotes',
  'dailybread',  # daily nourishment
  'exams',
  'house_requests',
  'leaveslips',
  'lifestudies',
  'meal_seating',
  'room_reservations',
  'schedules',
  'seating',  # seating charts
  'syllabus',  # class syllabus
  'verse_parse',  # parse outlines for PSRP verses
  'web_access',
)

# FOBI SETTINGS
TEMPLATES[0]['OPTIONS']['context_processors'].append("fobi.context_processors.theme")
FOBI_APPS = (
  # fobi-core
  'fobi',
  #theme
  'fobi.contrib.themes.bootstrap3',
  'fobi.contrib.themes.simple', # Simple theme

  #form-elements
  'fobi.contrib.plugins.form_elements.fields.boolean',
  'fobi.contrib.plugins.form_elements.fields.checkbox_select_multiple',
  'fobi.contrib.plugins.form_elements.fields.date',
  'fobi.contrib.plugins.form_elements.fields.date_drop_down',
  'fobi.contrib.plugins.form_elements.fields.datetime',
  'fobi.contrib.plugins.form_elements.fields.decimal',
  'fobi.contrib.plugins.form_elements.fields.email',
  'fobi.contrib.plugins.form_elements.fields.file',
  'fobi.contrib.plugins.form_elements.fields.float',
  'fobi.contrib.plugins.form_elements.fields.hidden',
  'fobi.contrib.plugins.form_elements.fields.input',
  'fobi.contrib.plugins.form_elements.fields.integer',
  'fobi.contrib.plugins.form_elements.fields.ip_address',
  'fobi.contrib.plugins.form_elements.fields.null_boolean',
  'fobi.contrib.plugins.form_elements.fields.password',
  'fobi.contrib.plugins.form_elements.fields.radio',
  'fobi.contrib.plugins.form_elements.fields.regex',
  'fobi.contrib.plugins.form_elements.fields.select',
  'fobi.contrib.plugins.form_elements.fields.select_model_object',
  'fobi.contrib.plugins.form_elements.fields.select_multiple',
  'fobi.contrib.plugins.form_elements.fields.select_multiple_model_objects',
  'fobi.contrib.plugins.form_elements.fields.slug',
  'fobi.contrib.plugins.form_elements.fields.text',
  'fobi.contrib.plugins.form_elements.fields.textarea',
  'fobi.contrib.plugins.form_elements.fields.time',
  'fobi.contrib.plugins.form_elements.fields.url',

  #handlers
  'fobi.contrib.plugins.form_handlers.db_store',
  )

FOBI_APPS+=('fobi_override',)
APPS += FOBI_APPS #after accounts, before admin stuff
FOBI_DEFAULT_THEME = 'bootstrap3'

BASE_DIR = os.path.dirname(os.path.abspath(__name__)) #FOBI settings needs this var

# end fobi settings

INSTALLED_APPS = (
  # admin third-party modules
  'adminactions',
  'suit',  # needs to be in front of 'django.contrib.admin'
  'paintstore',
  'solo',
  'django_extensions',
  'massadmin',
  'webpack_loader',
  'rest_framework_swagger',

  # django contrib
  'django.contrib.auth',
  'django.contrib.contenttypes',
  'django.contrib.sessions',
  'django.contrib.sites',
  'django.contrib.messages',
  'django.contrib.postgres',
  'django.contrib.staticfiles',
  'django.contrib.admin',
  'django.contrib.admindocs',

  # third-party django modules
  'bootstrap3',  # easy-to-use bootstrap integration
  'braces',  # Mixins for Django's class-based views.
  'explorer',  # SQL explorer
  'django_select2',
  'rest_framework',  # for API
  'django_countries',  # to replace aputils country
  'localflavor',  # to replace aputils states

  # django wiki modules
  'django.contrib.humanize',
  'django_nyt',
  'mptt',
  'sekizai',
  'sorl.thumbnail',
  'wiki',
  'wiki.plugins.attachments',
  'wiki.plugins.notifications',
  'wiki.plugins.images',
  'wiki.plugins.macros',

) + APPS

# A sample logging configuration. The only tangible logging
# performed by this configuration is to send an email to
# the site admins on every HTTP 500 error when DEBUG=False.
# See http://docs.djangoproject.com/en/dev/topics/logging for
# more details on how to customize your logging configuration.
LOGGING = {
  'version': 1,
  'disable_existing_loggers': False,
  'formatters': {
    'standard': {
      'format': "[%(asctime)s] %(levelname)s %(message)s",
      'datefmt': "%d/%b/%Y %H:%M:%S"
    },
  },
  'filters': {
    'require_debug_false': {
      '()': 'django.utils.log.RequireDebugFalse'
    }
  },
  'handlers': {
    'mail_admins': {
      'level': 'ERROR',
      'filters': ['require_debug_false'],
      'class': 'django.utils.log.AdminEmailHandler'
    },
    'import_logfile': {
      'level': 'DEBUG',
      'class': 'logging.handlers.TimedRotatingFileHandler',
      'filename': os.path.join(SITE_ROOT, 'import.log'),
      'when': 'midnight',
      'interval': 1,
      'formatter': 'standard'
    },
    'console': {
      'level': 'DEBUG',
      'class': 'logging.StreamHandler',
      'formatter': 'standard'
    },
  },
  'loggers': {
    'django.request': {
      'handlers': ['mail_admins'],
      'level': 'ERROR',
      'propagate': True,
    },
    'apimport': {
      'handlers': ['import_logfile', 'console'],
      'level': 'DEBUG',
      'propagate': True,
    }
  }
}

BOOTSTRAP3 = {
  'base_url': None,
  'theme_url': None,
  'horizontal_label_class': 'col-md-2',
  'horizontal_field_class': 'col-md-4',
}

WEBPACK_LOADER = {
  'DEFAULT': {
    'BUNDLE_DIR_NAME': 'bundles/',
    'STATS_FILE': os.path.join(SITE_ROOT, '../webpack/webpack-stats.json'),
  }
}

# URL after login page
LOGIN_REDIRECT_URL = '/'

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'

MESSAGE_TAGS = {
  message_constants.DEBUG: 'debug',
  message_constants.INFO: 'info',  # blue
  message_constants.SUCCESS: 'success',  # green
  message_constants.WARNING: 'warning',  # yellow
  message_constants.ERROR: 'danger',  # red
}

REST_FRAMEWORK = {
  # Use hyperlinked styles by default.
  # Only used if the `serializer_class` attribute is not set on a view.
  'DEFAULT_MODEL_SERIALIZER_CLASS':
    'rest_framework.serializers.ModelSerializer',

  # Use Django's standard `django.contrib.auth` permissions,
  # or allow read-only access for unauthenticated users.
  'DEFAULT_PERMISSION_CLASSES': [
    'rest_framework.permissions.AllowAny',
    # 'rest_framework.permissions.DjangoModelPermissionsOrAnonReadOnly',
  ]
}

SUIT_CONFIG = {
  # header
  'ADMIN_NAME': 'FTTA Admin',
  'LIST_PER_PAGE': 20,
}

# Settings for graphing SQL Schema
GRAPH_MODELS = {
  'all_applications': True,
  'group_models': True,
}

# Auto adds in css for admin pages
AUTO_RENDER_SELECT2_STATICS = True

COUNTRIES_FIRST = ['US', 'CN', 'CA', 'BZ', ]

# Communicating with firewall for granting web access requests
HOST = "10.0.8.20" # hostname or ip address of the firewall (add to /etc/hosts)
PORT = 12345 # server port of application which listens for commands on the firewall

PROJECT_HOME = os.path.dirname(SITE_ROOT)

AUDIO_FILES_DIR = MEDIA_ROOT

SELECT2_JS = ''
SELECT2_CSS = ''
