var LocalStrategy = require("passport-local").Strategy;

var mysql = require('mysql');
var bcrypt = require('bcrypt-nodejs');
var dbconfig = require('./database');
var connection = mysql.createConnection(dbconfig.connection);

connection.query('USE ' + dbconfig.database);

module.exports = function(passport) {
 passport.serializeUser(function(user, done){
  done(null, user.id);
 });

 passport.deserializeUser(function(id, done){
  connection.query("SELECT * FROM users WHERE id = ? ", [id],
   function(err, rows){
    done(err, rows[0]);
   });
 });

 passport.use(
  'local-signup',
  new LocalStrategy({
   usernameField : 'username',
   passwordField: 'password',
   passReqToCallback: true
  },
  function(req, username, password, done){
   connection.query("SELECT * FROM users WHERE username = ? ", 
   [username], function(err, rows){
    if(err)
     return done(err);
    if(rows.length){
     return done(null, false, req.flash('signupMessage', 'That is already taken'));
    }else{
     var newUserMysql = {
      username: username,
      password: bcrypt.hashSync(password, null, null)
     };
 
     var insertQuery = "INSERT INTO users (username, password) values (?, ?)";

     connection.query(insertQuery, [newUserMysql.username, newUserMysql.password],
      function(err, rows){
       newUserMysql.id = rows.insertId;

       return done(null, newUserMysql);
      });
    }
   });
  })
 );

 passport.use(
  'local-login',
  new LocalStrategy({
   usernameField : 'username',
   passwordField: 'password',
   passReqToCallback: true
  },
  function(req, username, password, done){
   connection.query("SELECT * FROM users WHERE username = ? ", [username],
   function(err, rows){
    if(err)
     return done(err);
    if(!rows.length){
     return done(null, false, req.flash('loginMessage', 'No User Found'));
    }
    if(!bcrypt.compareSync(password, rows[0].password))
     return done(null, false, req.flash('loginMessage', 'Wrong Password'));

    return done(null, rows[0]);
   });
  })
 );

 passport.use(
  'Registration',
  new LocalStrategy({
   fnameField : 'F_name',
   lnameField: 'l_name',
   passwordField: 'password',
   genderField:'gender',
   year_of_birthField:'year_of_birth', 
   passReqToCallback: true
  },
  function(req, F_name, l_name, password,gender,year_of_birth, done){
   connection.query("SELECT * FROM user_details WHERE U_name = ? ", 
   [F_name], function(err, rows){
    if(err)
     return done(err);
    if(rows.length){
     return done(null, false, req.flash('signupMessage', 'That is already taken'));
    }else{
     var newRegisteredUserMysql = {
      U_name: U_name,
      F_name: F_name,
      l_name:l_name,
      gender:gender,
      year_of_birth: year_of_birth,
      password: bcrypt.hashSync(password, null, null)
     };

     var insertQuery = "INSERT INTO user_details (U_name,F_name,L_name,gender,year_of_birth, password) values (?, ?, ?, ? ,?)";
  console.log(newRegisteredUserMysql)
     connection.query(insertQuery, [newRegisteredUserMysql.F_name, newRegisteredUserMysql.l_name, newRegisteredUserMysql.password, newRegisteredUserMysql.gender,newRegisteredUserMysql.year_of_birth],
      function(err, rows){
       newRegisteredUserMysql.id = rows.insertId;

       return done(null, newRegisteredUserMysql);
      });
    }
   });
  })
 );
};