from django.shortcuts import render, get_object_or_404, redirect
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .forms import RecipeCreateForm
from django.utils.decorators import method_decorator
from django.urls import reverse_lazy
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from .models import Recipe, Comment
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.contrib import messages


class RecipeListView(ListView):
    queryset = Recipe.objects.all()
    paginate_by = 6
    template_name = 'recipes/recipe_list.html'

    def get_queryset(self):
        queryset = super().get_queryset()
        q = self.request.GET.get('q')
        cat = self.request.GET.get('cat')
        author = self.request.GET.get('author')
        if q:
            queryset = queryset.filter(
                Q(title__icontains=q) |
                Q(details__icontains=q)
            ).distinct()
        if cat:
            queryset = queryset.filter(categories__icontains=cat)

        if author:
            queryset = queryset.filter(user__username=author)
        return queryset

    @method_decorator(login_required)
    def post(self, request, *args, **kwargs):
        post_id = request.POST.get('unlike')
        post_id2 = request.POST.get('like')
        if post_id is not None:
            post = get_object_or_404(Recipe, id=post_id)
            post.likes.remove(request.user)
        if post_id2 is not None:
            post_id2 = request.POST.get('like')
            post = get_object_or_404(Recipe, id=post_id2)
            post.likes.add(request.user)
        return redirect('home')


class RecipeDetailView(DetailView):
    queryset = Recipe.objects.all()

    @method_decorator(login_required)
    def post(self, request, *args, **kwargs):
        comment = request.POST.get('comment')
        c_slug = request.POST.get('slug')
        if comment:
            if c_slug:
                post = get_object_or_404(Recipe, slug=c_slug)
                comment = Comment.objects.create(
                    user=request.user, post=post, text=comment)
                comment.save()
                return redirect('detail', c_slug)
        return redirect('detail', c_slug)


class RecipeCreateView(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    template_name = 'recipes/recipe_form.html'
    form_class = RecipeCreateForm
    success_url = reverse_lazy('my_posts')
    success_message = "Post Created Successfully"

    def form_valid(self, form):
        instance = form.save(commit=False)
        instance.user = self.request.user
        return super().form_valid(form)


class RecipeUpdateView(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    form_class = RecipeCreateForm
    template_name = 'recipes/recipe_form.html'
    success_url = reverse_lazy('my_posts')
    success_message = "Post Updated Successfully"

    def get_queryset(self):
        return Recipe.objects.filter(user=self.request.user)


class RecipeDeleteView(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    success_url = reverse_lazy('my_posts')
    success_message = "Post Deleted Successfully"

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super().delete(request, *args, **kwargs)

    def get_queryset(self):
        return Recipe.objects.filter(user=self.request.user)


class MyPostView(LoginRequiredMixin, ListView):
    template_name = 'recipes/my_posts.html'

    def get_queryset(self):
        return Recipe.objects.filter(user=self.request.user)
