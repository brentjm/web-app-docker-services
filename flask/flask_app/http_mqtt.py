#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Module to convert between from HTTP request to MQTT
"""
import json
import paho.mqtt.client as mqtt

__author__ = "Brent Maranzano"
__license__ = "MIT"


def mqtt_setup(broker="mosquitto", client_id="flask"):
    mqttc = mqtt.Client(client_id=client_id)
    #mqttc.on_connect = create_mqtt_on_connect()
    #mqttc.on_message = _create_mqtt_on_message()
    mqttc.connect(broker, 1883, 10)
    mqttc.loop_start()

def mqtt_publish(topic="frigg/command", payload={"status": "command"}):
    payload = json.dumps(payload)

