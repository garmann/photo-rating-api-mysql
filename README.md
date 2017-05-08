
# photo-rating-api-mysql

this is a first replacement version of photo-rating-api which runs without a database. the old version runs against the local fs. comming with that version i'm using mysql docker.

## description
this is a quick project setup / prototype. its simulating an api for the angularjs app: photo-rating - to be able to make backend json calls.

currently its missing a database implementation like mysql. it updates the files on the filesystem.

## setup
- see package.json... and npm install`

## test

- for testing purposes the database needs to be empty (photo_rating.sql and not full import)
```
npm run test:http
```

## running the db
```
docker run -it -e MYSQL_ROOT_PASSWORD=x -p 3306:3306 -v YOURPATH:/tmp/data/ mysql:5.7
```
- after that i currently login and import the database with mysql
```
docker exec -it DOCKERID /bin/bash
cd /tmp/data/
mysql -uroot -px < photo_rating.sql
```

## running it api

- node app.js

or for watching file changes:

- ```npm install -g nodemon```
- ```nodemon app.js```

## api query commands

get shooting overview:

```http localhost:3001/listing-overview```

get shooting details:

```http localhost:3001/listing/1```

create new shooting:

```http POST localhost:3001/listing @json/listing-details-1.json```

update shooting:

```http PUT localhost:3001/listing/1 @json/listing-details-1.json```

delete shooting:

```http DELETE localhost:3001/listing/8```