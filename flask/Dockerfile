FROM python:3.7
RUN addgroup --system --gid 1001 flask\
    && adduser --system --home /home/flask --shell /bin/sh --uid 1001 --gid 1001 flask\
    && pip install flask gunicorn paho-mqtt 

USER flask
RUN mkdir -p /home/flask/python/app
COPY ./flask_app/app.py /home/flask/python/app/app.py
WORKDIR /home/flask/python/app
EXPOSE 8000
#CMD ["/bin/sh", "-c", "sleep 1000000000"]
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:application"]
