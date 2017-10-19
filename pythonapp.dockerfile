FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install flask flask-jsonpify flask-sqlalchemy flask-restful
RUN mkdir /app
ADD . /app/
WORKDIR /app

CMD ["python", "app.py", "-p 8081"]