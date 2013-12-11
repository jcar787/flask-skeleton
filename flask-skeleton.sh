#!/bin/bash

if test $# -eq 0 
    then
        echo "You must supply the name of the project"
        exit 1
fi

echo "Creating directory $1 and changing to it"
mkdir $1 && cd $1

echo "Creating the virtual environment in $1"
virtualenv venv && source ./venv/bin/activate

echo "Installing Flask, Flask-Login, Flask-Mongokit, Flask-WTF"
pip install Flask Flask-Login Flask-Mongokit Flask-WTF

echo "Creating and changing to the app directory"
mkdir app && cd app

echo "Creating the skeleton for the app"
mkdir -p static/js static/css static/img template
touch __init__.py models.py views.py forms.py

echo "Finishing creating project $1"
exit 0

