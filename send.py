#!/usr/bin/env python
import pika

connection = pika.BlockingConnection(
    pika.ConnectionParameters(host='your_host'))
channel = connection.channel()

channel.queue_declare(queue='drone_messages')

channel.basic_publish(exchange='', routing_key='drone_messages', body='')
print(" [x] Sent {body}")
connection.close()