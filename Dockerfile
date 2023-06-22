FROM python:3
RUN pip install Django==4.2.2
COPY . .
RUN python3 manage.py migrate
CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]