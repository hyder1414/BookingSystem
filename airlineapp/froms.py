from .models import Feedback
from django.forms import ModelForm
class PropertyForm(ModelForm):
    class meta:
        model=Feedback
        fields=['feedbackid', 'rating', 'note', 'reservationid']