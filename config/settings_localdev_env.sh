#!/bin/bash


## LOCALDEV settings for django `compress_issue_project`
##
## This file is loaded by `env/bin/activate` when running locally...
## ...and by `project/config/passenger_wsgi.py` on our servers.
##
## When deploying on our servers, copy this file to the appropriate place, edit it, 
## ...and point to it from activate and the apache <Location> entry.


## ============================================================================
## standard project-level settings
## ============================================================================

export COMPRESS_ISSUE__SECRET_KEY="example_secret_key"

export COMPRESS_ISSUE__DEBUG_JSON="true"

export COMPRESS_ISSUE__ADMINS_JSON='
    [
      [
        "exampleFirst exampleLast",
        "example@domain.edu"
      ]
    ]
    '

export COMPRESS_ISSUE__ALLOWED_HOSTS_JSON='["127.0.0.1", "127.0.0.1:8000", "0.0.0.0:8000", "localhost:8000"]'  # must be json

export COMPRESS_ISSUE__DATABASES_JSON='
    {
      "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "HOST": "",
        "NAME": "../DBs/compress_issue_project_files.sqlite",
        "PASSWORD": "",
        "PORT": "",
        "USER": ""
      }
    }
    '

export COMPRESS_ISSUE__STATIC_URL="/static/"
export COMPRESS_ISSUE__STATIC_ROOT="/static/"

export COMPRESS_ISSUE__EMAIL_HOST="localhost"
export COMPRESS_ISSUE__EMAIL_PORT="1026"  # will be converted to int in settings.py
export COMPRESS_ISSUE__SERVER_EMAIL="donotreply_x-project@domain.edu"

export COMPRESS_ISSUE__LOG_PATH="../logs/compress_issue_project.log"
export COMPRESS_ISSUE__LOG_LEVEL="DEBUG"

export COMPRESS_ISSUE__CSRF_TRUSTED_ORIGINS_JSON='["localhost", "127.0.0.1"]'

## https://docs.djangoproject.com/en/3.2/topics/cache/
## - TIMEOUT is in seconds (0 means don't cache); CULL_FREQUENCY defaults to one-third
export COMPRESS_ISSUE__CACHES_JSON='
{
  "default": {
    "BACKEND": "django.core.cache.backends.filebased.FileBasedCache",
    "LOCATION": "../cache_dir",
    "TIMEOUT": 0,
    "OPTIONS": {
        "MAX_ENTRIES": 1000
    }
  }
}
'

## ============================================================================
## app
## ============================================================================

export COMPRESS_ISSUE__README_URL="https://github.com/birkin/django_template_32_project/blob/main/README.md"

## auth -------------------------------------------------------------

export COMPRESS_ISSUE__SUPER_USERS_JSON='[
]'

export COMPRESS_ISSUE__STAFF_USERS_JSON='
[
  "eppn@domain.edu"
]'

export COMPRESS_ISSUE__STAFF_GROUPER_GROUP="the:group"

export COMPRESS_ISSUE__TEST_META_DCT_JSON='{
  "Shibboleth-eppn": "eppn@brown.edu",
  "Shibboleth-brownNetId": "First_Last",
  "Shibboleth-mail": "first_last@domain.edu",
  "Shibboleth-givenName": "First",
  "Shibboleth-sn": "Last",
  "Shibboleth-isMemberOf": "aa:bb:cc;dd:ee:ff;the:group;gg:hh"
}'

export COMPRESS_ISSUE__LOGIN_PROBLEM_EMAIL="compress_issue_project_problems@domain.edu"


## end --------------------------------------------------------------
