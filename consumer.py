#!/usr/bin/python3

from kafka import KafkaConsumer
import json

consumer = KafkaConsumer('honeypot', bootstrap_servers='localhost')

for message in consumer:
    print(message.value)