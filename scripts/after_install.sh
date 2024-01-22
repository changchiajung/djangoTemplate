#!/usr/bin/env bash

# kill any servers that may be running in the background 
sudo pkill -f runserver

cd /home/ubuntu/djangoTemplate/

# activate virtual environment
python3 -m venv venv
source venv/bin/activate

install requirements.txt
pip install -r /home/ubuntu/djangoTemplate/requirements.txt

# run server
screen -d -m python3 manage.py runserver 0:8000
