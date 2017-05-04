
# photo-rating-api-mysql

** currently under development **

**TODO:**
- unit testing (http testing is working atm)
- stuff needs to be replaced (unused code)
- rework of response code and error/input checking
- output
- DOCSTRINGS and doc
- review of all names and parameter
- more input checking

this is a first replacement version of photo-rating-api which runs without a database. the old version runs against the local fs. comming with that version i'm using mysql docker.

## description
this is a quick project setup / prototype. its simulating an api for the angularjs app: photo-rating - to be able to make backend json calls.

currently its missing a database implementation like mysql. it updates the files on the filesystem.

## setup
- see package.json... and npm install`

## test

```
npm run test:http
npm run test:unit
```

## running the db
```
docker run -it -e MYSQL_ROOT_PASSWORD=x -p 3306:3306 -v YOURPATH:/tmp/data/ mysql:5.7
```
- after that i currently login and import the database with mysqldump

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