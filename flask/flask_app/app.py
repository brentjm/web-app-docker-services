#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Flask application to relay commands from an HTTP POST to
MQTT.
"""

import paho.mqtt.client as mqtt
import logging
import json
from flask import Flask, request
#import http_mqtt

__author__ = "Brent Maranzano"
__license__ = "MIT"


application = Flask(__name__)
application.config["DEBUG"] = True

def _setup_logger():
    """Start the logger.
    """
    handler = logging.StreamHandler()
    handler.setLevel(logging.DEBUG)
    application.logger.addHandler(handler)
    application.logger.setLevel(logging.DEBUG)
    application.logger.info("flask_app logger setup")

def _mqtt_setup(mqtt_broker="mosquitto", client_id="flask"):
    """Setup the MQTT client.
    """
    mqttc = mqtt.Client(client_id=client_id)
    mqttc.connect(mqtt_broker, 1883, 10)
    mqttc.loop_start()
    application.logger.info("MQTT client setup")
    return mqttc

def _mqtt_publish(topic="frigg/data", payload={"command": "test"}):
    command = json.dumps(request.form)

_setup_logger()
mqttc = _mqtt_setup()


@application.route("/test")
def test():
    """
    Default route
    """
    return "Hello World, from Flask!"

@application.route("/ape/<number>", methods=["POST"])
def mqtt_relay(number=None):
    """Publish POST data to MQTT broker.

    Arguments
    number (str): The device number.

    Return (JSON) Device data.
    """
    application.
    command = json.dumps(request.form)
    application.logger.debug(command)
    mqttc.publish("frigg/command", payload=command)
    response = json.dumps({"status": "success"})
    return response

if __name__ == "__main__":
    print("test")
    application.run(host="0.0.0.0:5000", debug=True)
