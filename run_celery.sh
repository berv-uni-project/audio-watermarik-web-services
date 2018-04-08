#!/bin/sh

# wait for RabbitMQ server to start
sleep 10
  
# run Celery worker for our project myproject with Celery configuration stored in Celeryconf
su -m audiomaster -c "celery worker -A audio_watermark_web_services.celeryconf -Q default -n default@%h" 
