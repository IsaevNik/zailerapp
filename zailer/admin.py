# -*- coding: utf-8 -*-
from django.contrib import admin

# Register your models here.
from .models import PortfolioItem, ProjectImage, Project, Service, HomePageSliderItem, CarForSale, CarForSaleImage




# Register your models here.
class ProjectImageInline(admin.TabularInline):
	model = ProjectImage
	extra = 1

class CarForSaleImageInline(admin.TabularInline):
	model = CarForSaleImage
	extra = 1

class ProjectAdmin(admin.ModelAdmin):
	fieldsets = [
        ('Название проекта', {'fields': ['name']}),
        ('Описание проекта', {'fields': ['description']}),
        ('Модель', {'fields': ['model']}),
        ('Марка', {'fields': ['mark']}),
        ('Элемент в портфолио', {'fields': ['portfolio_item']}),
    ]
	list_display = ('name', 'project_url', 'portfolio_item')
	inlines = [ProjectImageInline]

class PortfolioItemAdmin(admin.ModelAdmin):
	fieldsets = [
		('Название', {'fields': ['name']}),
		('Марка для фильтра(в нижнем регистре)', {'fields': ['mark_name']}),
		('Модель для фильтра (только для RR)', {'fields': ['model']}),
		('Версия модели (только для RR)', {'fields': ['years']}),
		('Описание(показывается внизу на слайде)(необязательное поле)', {'fields': ['desc']}),
		('Ссылка на фото', {'fields': ['img_url']}),
		('Дата публикации элемента', {'fields': ['pub_date']})
	]
	list_display = ('name', 'mark_name')

class ServiceAdmin(admin.ModelAdmin):
	fieldsets = [
		('Название', {'fields': ['name']}),
		('Описание услуги', {'fields': ['description']}),
		('Ссылка на фото', {'fields': ['img_url']}),
	]
	list_display = ('name',)

class HomePageSliderItemAdmin(admin.ModelAdmin):
	fieldsets = [
		('Титул', {'fields': ['title']}),
		('Подтитул', {'fields': ['subtitle']}),
		('Номер по порядку (уникальный)', {'fields': ['order_number']}),
		('Текст кнопки', {'fields': ['button_text']}),
		('Ссылка на проект (project_url в Project)', {'fields': ['button_url']}),
		('Ссылка на фото фона', {'fields': ['img_url']}),
		('Подпись миниатюры при наведении на стрелки слайдера', {'fields': ['slide_title']}),
	]
	list_display = ('title', 'order_number', 'button_url')

class CarForSaleAdmin(admin.ModelAdmin):
	fieldsets = [
		('Марка', {'fields': ['mark']}),
		('Модель', {'fields': ['model']}),
		('Модификация', {'fields': ['modification']}),
		('Описание авто', {'fields': ['description']}),
		('Цена', {'fields': ['price']}),
		('Контактные данные', {'fields': ['contact']}),
	]
	list_display = ('mark', 'model', 'modification', 'price', 'contact')
	inlines = [CarForSaleImageInline]

admin.site.register(CarForSale, CarForSaleAdmin)
admin.site.register(Project, ProjectAdmin)
admin.site.register(PortfolioItem, PortfolioItemAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(HomePageSliderItem, HomePageSliderItemAdmin)

#