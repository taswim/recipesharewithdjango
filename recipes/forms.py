from django import forms
from .models import Recipe,Comment
from .snippets import choices

class RecipeCreateForm(forms.ModelForm):
    title = forms.CharField(widget=forms.TextInput(attrs={'class':'form-control','placeholder': 'Enter title'}))
    categories = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Categories separated by comma. Example: chinese,thai'}))
    image = forms.ImageField(widget=forms.FileInput(attrs={'class': 'form-control-file'}))
    taste = forms.ChoiceField(widget=forms.Select(attrs={'class': 'form-control'}),choices=choices)
    persons = forms.ChoiceField(widget=forms.Select(
        attrs={'class': 'form-control'}), choices=choices)
    details = forms.CharField(widget=forms.Textarea(attrs={'class': 'form-control'}))

    class Meta:
        model = Recipe
        fields = ['title','image','categories','taste','persons','details']
