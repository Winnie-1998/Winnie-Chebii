const mysql = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  port     :  3306,
  user     : 'root',
  password : '',
  database : 'talentcentre3'
});
connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.message);
   return;
  }
  console.log('connected successfully!');
});
module.exports = connection
  