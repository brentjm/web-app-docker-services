FROM nodered/node-red

USER node-red
COPY --chown=node-red:node-red settings.js /data/.
COPY --chown=node-red:node-red flows.json /data/.
#COPY --chown=node-red:node-red flows_cred.json /data/.

RUN npm install node-red-contrib-credentials \
    node-red-dashboard \
    node-red-contrib-postgres-multi \
    node-red-contrib-influxdb 
