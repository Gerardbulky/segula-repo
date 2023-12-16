FROM python:3.9-slim-buster
WORKDIR /app
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt
COPY . .
ENV FLASK_APP=app.py
# Expose the port the app runs on
EXPOSE 5000
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]