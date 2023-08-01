from django.apps import AppConfig

# To include the app in our project, we need to add a reference to its configuration class in the INSTALLED_APPS setting.
# The PollsConfig class is in the polls/apps.py file, so its dotted path is 'polls.apps.PollsConfig'.
# Edit the mysite/settings.py file and add that dotted path to the INSTALLED_APPS setting. It’ll look like this:
class MyappConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'myapp'
