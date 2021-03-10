FROM eclipse-mosquitto

COPY --chown=mosquitto:mosquitto ./mosquitto.conf /mosquitto/config/mosquitto.conf
#COPY --chown=mosquitto:mosquitto ./mosquitto.log /mosquitto/config/mosquitto.log
RUN chown -R mosquitto:mosquitto /mosquitto
#USER mosquitto
