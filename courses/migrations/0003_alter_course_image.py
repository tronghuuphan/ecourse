# Generated by Django 3.2.9 on 2021-11-05 14:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0002_course'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='image',
            field=models.ImageField(default=None, upload_to='courses/%Y/%m'),
        ),
    ]
