var express = require('express'), cors = require('cors');
var zip = require('express-zip');
var app = express();
var bodyParser = require('body-parser');
var parseUrlencoded = bodyParser.urlencoded({ extended: false });
var mysql = require('mysql');
var helperFunctions = require('./api-functions.js');
var fs = require('fs');


var Dbfunctions = require('./db-functions.js');
var dbs = new Dbfunctions();


app.use(bodyParser.json());
app.use(cors());


app.get('/listing-overview', function(request, response){

    dbs.getListingOverview()
    .then(
        function(resolve){
            console.log(resolve);
            response.status(200).send({listings: JSON.parse(resolve)});
        },
        function(reject){
            console.log('error:', reject);
            response.status(400).send('clould not generate listing');
        }
    );

});


app.get('/listing/:listingid', function(request, response){

    try {
        var listingid = parseInt(request.params.listingid, 10);
        
        if (!isNaN(listingid)){

            dbs.getListingData(listingid)
            .then(
                function(resolve){
                    response.status(200).send({'shooting': JSON.parse(resolve)});
                },
                function(reject){
                    response.status(404).send('listing does not exist');
                }
            );
            
        } else {
            response.status(400).send('no valid data');
        }
    } catch (err) {
        console.log(err);
        response.status(400).send('no valid data');
    }
    
    

});


// create a new listing
app.post('/listing', parseUrlencoded, function(request, response){

    if(request.body.shooting && request.body.shooting.description.length > 5){

        dbs.createNewListing(request.body.shooting.title, request.body)
            .then(
                function(resolve){
                    response.status(201).send(resolve);
                },
                function(reject){
                    console.log('bad', reject);
                    response.status(404).send('could not create listing');
                }
            );

    } else {
        response.status(400).send('not a valid request');
    }

});


// update existing listing
app.put('/listing/:listingid', function(request, response){

    try {
        var listingid = parseInt(request.params.listingid, 10);
        
        if (!isNaN(listingid)){

            dbs.UpdateListing(listingid, request.body.shooting.title, request.body)
            .then(
                function(resolve){
                    response.status(201).send(resolve);
                },
                function(reject){
                    console.log('error:', reject);
                    response.status(404).send('could not update listing');
                }
            );
            
        } else {
            response.status(400).send('no valid data');
        }
    } catch (err) {
        console.log(err);
        response.status(400).send('no valid data');
    }

});


app.delete('/listing/:listingid', function(request, response){

    try {
        var listingid = parseInt(request.params.listingid, 10);
        
        if (!isNaN(listingid)){

            dbs.DeleteListing(listingid)
            .then(
                function(resolve){
                    response.status(201).send(resolve);
                },
                function(reject){
                    console.log('error:', reject);
                    response.status(404).send('could not delete listing');
                }
            );
            
        } else {
            response.status(400).send('no valid data');
        }
    } catch (err) {
        console.log(err);
        response.status(400).send('no valid data');
    }


});


/*
 part for downloading whole listings as zip file
*/
app.get('/download-listing/:id', function(request, response){
    var id = parseInt(request.params.id, 10);
    var pathToImages = '../photo-rating/app/res/images/' + id + '/';
    var dirContent = fs.readdirSync(pathToImages);
    var downloadFileName = 'shooting-' + id + '.zip';

    var filesForZipper = [];
    for (var i = 0;i < dirContent.length;i++){
        if (!dirContent[i].match(/^\./)){
            filesForZipper.push({
                path: pathToImages + dirContent[i],
                name: dirContent[i]
            });
        }
    }

    response.zip(filesForZipper, downloadFileName);

});

/*
    part for download single images
*/
app.get('/download-image/:id/:filename', function(request, response){
    var id = parseInt(request.params.id, 10);
    var filename = request.params.filename;
    var pathToImages = '../photo-rating/app/res/images/' + id + '/';
    var downloadFileName = pathToImages + filename;

    response.download(downloadFileName, filename);
});


var server = app.listen(3001, function () {
  console.log("Running Express");
})

module.exports = server;
