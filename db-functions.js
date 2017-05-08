var mysql = require('mysql');

module.exports = Database;

function Database(){

  var dbpool = mysql.createPool({
    connectionLimit: 5,
    host     : '0.0.0.0',
    user     : 'root',
    password : 'x',
    database : 'photo_rating'
  });


  this.getListingOverview = function(){
    return new Promise(
      function(resolve, reject){

        var sql = "SELECT id, title FROM listings"
        dbpool.query(sql, function(error, results, fields){
          if (error) return reject('could not get data' + error);

          return resolve(JSON.stringify(results));
        });
      }
    );

  };


  this.getListingData = function(listingid){
    return new Promise(
      function(resolve, reject){

        var sql = "select JSON_EXTRACT(data, '$.shooting') AS data FROM listing_details WHERE listingid = " + listingid;
        dbpool.query(sql, function(error, results, fields){
          if (error) return reject('error with mysql query');

          try {
            resolve(results[0].data);
            return;
          } catch (err) {
            return reject(err);
          }


        });
      }
    );
  };


  this.createNewListing = function(title, jsondata){
    return new Promise(
      function(resolve, reject){

        var sql1 = "INSERT INTO listings (title) VALUES('" + title + "')";
        dbpool.query(sql1, function(error, results, fields){
          if (error) return reject('error with mysql query id1');

          var sql2 = "SELECT id FROM listings WHERE title = '" + title + "'";
          dbpool.query(sql2, function(error, results, fields){
            if (error) return reject('error with mysql query id2');

            var sql3 = "INSERT INTO listing_details (listingid, data) VALUES(" 
                + results[0].id 
                + ",'" 
                + JSON.stringify(jsondata) 
                + "')";
            var listingid = results[0].id;

            dbpool.query(sql3, function(error, results, fields){
              if (error) return reject('error with mysql query id3');
              
              return resolve('created listing with id: ' + listingid);

            });
          });
        });
      }
    );
  };


  this.DeleteListing = function(listingid){
    return new Promise(
      function(resolve, reject){

        //sql deletion order is important due to db foreign keys
        var sql1 = "DELETE FROM listing_details WHERE listingid ='" + listingid + "'";
        var sql2 = "DELETE FROM listings WHERE id = '" + listingid + "'";
        dbpool.query(sql1, function(error, results, fields){
          if (error) return reject('mysql error1', error);

          dbpool.query(sql2, function(error, results, fields){
            if (error) return reject('mysql error2', error);

            return resolve('listing deleted');
          });
        });
      }
    );
  };


  this.UpdateListing = function(listingid, title, jsondata){
    return new Promise(
      function(resolve, reject){

        var sql1 = "UPDATE listings SET title = '" + title + "' WHERE id = '" + listingid + "'";
        var sql2 = "UPDATE listing_details SET data = '" + JSON.stringify(jsondata) + "' WHERE listingid ='" + listingid + "'";
        dbpool.query(sql1, function(error, results, fields){
          if (error) return reject('mysql error1', error);

          dbpool.query(sql2, function(error, results, fields){
            if (error) return reject('mysql error2', error);

            return resolve('json updated');
          });
        });
      }
    );
  };


}

