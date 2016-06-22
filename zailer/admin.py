# -*- coding: utf-8 -*-
from django.contrib import admin

# Register your models here.
from .models import PortfolioItem, ProjectImage, Project




# Register your models here.
class ProjectImageInline(admin.TabularInline):
	model = ProjectImage
	extra = 1

class ProjectAdmin(admin.ModelAdmin):
	fieldsets = [
        ('Название проекта', {'fields': ['name']}),
        ('Описание проекта', {'fields': ['description']}),
        ('Модель', {'fields': ['model']}),
        ('Марка', {'fields': ['mark']}),
        ('Видео (необязательное поле)', {'fields': ['video_url']}),
        ('Элемент в портфолио', {'fields': ['portfolio_item']}),
    ]
	list_display = ('name', 'model', 'mark', 'portfolio_item')
	inlines = [ProjectImageInline]

class PortfolioItemAdmin(admin.ModelAdmin):
	pass
	fieldsets = [
		('Название', {'fields': ['name']}),
		('Марка для фильтра(в нижнем регистре)', {'fields': ['mark_name']}),
		('Модель для фильтра (только для RR)', {'fields': ['model']}),
		('Версия модели (только для RR)', {'fields': ['years']}),
		('Описание(показывается внизу на слайде)(необязательное поле)', {'fields': ['desc']}),
		('Ссылка на фото', {'fields': ['img_url']}),
	]
	list_display = ('name', 'mark_name')

admin.site.register(Project, ProjectAdmin)
admin.site.register(PortfolioItem, PortfolioItemAdmin)