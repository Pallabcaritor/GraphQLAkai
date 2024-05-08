# pull official base image
FROM python:3.12.3

# set work directory
WORKDIR /home/caritor-backend/Desktop/GraphQL_Github/GraphQLAkai

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .