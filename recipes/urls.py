from django.urls import path
from .views import RecipeListView, RecipeDetailView,\
    RecipeCreateView, RecipeUpdateView, RecipeDeleteView,\
    MyPostView

urlpatterns = [
    path('', RecipeListView.as_view(), name='home'),
    path('create/', RecipeCreateView.as_view(), name='create'),
    path('<slug:slug>/', RecipeDetailView.as_view(), name='detail'),
    path('<slug:slug>/update', RecipeUpdateView.as_view(), name='update'),
    path('<slug:slug>/delete', RecipeDeleteView.as_view(), name='delete'),
    path('dashboard/myposts/', MyPostView.as_view(), name='my_posts'),
]
