FROM nodered/node-red-docker:rpi

RUN sed -i -e '/dialout/c\dialout:x:20:node-red' /etc/group
USER node-red
COPY --chown=node-red:node-red settings.js /usr/src/node-red/.
COPY --chown=node-red:node-red flows.json /data/.
COPY --chown=node-red:node-red flows_cred.json /data/.

RUN npm install node-red-dashboard \
    node-red-node-serialport \
    node-red-contrib-opcua \
    node-red-contrib-cip-ethernet-ip \
    node-red-contrib-postgres-multi \
    node-red-contrib-influxdb \
    node-red-contrib-osisoft-web-api \
    node-red-node-twilio \
