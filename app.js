const path = require('path')
const express = require('express')
var mysql = require('mysql')
const bodyParser = require('body-parser')
const hbs = require('hbs')
const fs = require('fs')
const app = express()
const upload = require('express-fileupload')
const connection = require('./config/database')
const session = require('express-session')
app.use(upload())


var port = process.env.PORT || 3000;

app.use(express.static('/resources/public/'))
app.use(bodyParser.urlencoded({
    extended: true
}));

var urlencodedParser = bodyParser.urlencoded({ extended: false })

//define paths for express config
const publicDirectoryPath = path.join(__dirname, '/resources/public/')
const viewsPath = path.join(__dirname, '/resources/templates/views')
const partialsPath = path.join(__dirname, '/resources/templates/partials')

//set-uphandlebars engine and views location
app.set('views', viewsPath)
app.set('view engine', 'hbs')
hbs.registerPartials(partialsPath)
app.set('public', publicDirectoryPath)
//setup static directory to serve
app.use(express.static(publicDirectoryPath))

//Rendering Talents&Skills page
app.get('/users:id',function select(req, res) {
    var DbUsers;
    const user_id = req.params.id
    console.log(user_id);
    // console.log(user_id);
    const queryUsers = 'SELECT F_name, l_name,gender FROM user_details WHERE uuid=?' + user_id;
    console.log(queryUsers);
    connection.query(queryUsers, (err, rows, fields) => {
        // console.log(rows);
        if (err) {
            ("Unable to Query System Users" + err)
        } else {
            if (rows == undefined) {
                res.render('users', {
                    DbUsers: `Cannot Query Users:` + err
                })
            }
            else {
                DbUsers = rows;
                console.log(DbUsers)
                res.render('users', {
                    title: 'Talent&Skill Centre',
                    name: 'WINNIE',
                    DbUsers: DbUsers
                })
            }
        }

    })

})
app.get('/video', (req, res) => {
    //res.send('It is working');
    res.writeHead(200, { 'Content-Type': 'video/mp4' });
    var rs = fs.createReadStream('video.mp4');
    rs.pipe(res);

})
//Rendering video display page
app.post("/screen", (req, res) => {
    if (req.files) {
        const uploadsPath = path.join(__dirname, '/uploads')
        var file = req.files.filename,
            filename = file.name;
        file.mv(uploadsPath + filename, function (err) {
            if (err) {
                console.log(err)
                res.send("error occured!")
            }
            else {
                res.send("Upload Successfully Done!")

            }
        })
    }
});

//Rendering index page
app.get('', (req, res) => {
    res.render('index', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
});

//Rendering screen page
app.get('/screen', (req, res) => {
    res.render('screen.hbs', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
});

////Rendering video page
app.get('/video', (req, res) => {
    res.render('video.hbs', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE',
        rs: rs
    })
});

//Rendering Registration page
app.get('/sign-up', (req, res) => {
    res.render('sign-up.hbs', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
})
//Rendering the login page
app.get('/login', (req, res) => {
    res.render('login.hbs', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
})

//Rendering about_us page    
app.get('/about', (req, res) => {
    res.render('about.hbs', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
})

app.get('/help', (req, res) => {
    res.render('help.hbs', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
})

//Rendering Google map page            
app.get('/map', (req, res) => {

    res.render('map', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
})
app.get('/login', (req, res) => {
    res.render('login', {
        title: 'Talent&Skill Centre',
        name: 'WINNIE'
    })
})
//Page Rendering Error handling page           
app.get('*', (req, res) => {
    res.render('404', {
        title: '404',
        name: 'WINNIE',
        errorMessage: 'Page not found.'
    })
})
app.post('/login', function (request, response) {
    var username = request.body.f_name;
    var password = request.body.password;
    if (username && password) {
        connection.query('SELECT * FROM user_details WHERE F_name = ? AND password = ?', [username, password], function (error, results, fields) {
            if (results.length > 0) {
                // request.session.loggedin = true;
                // request.session.username = username;
                console.log(results[0]);
                response.redirect(`/users/${results[0].uuid}`);
            } else {
                response.send('Incorrect Username and/or Password!');
            }
            response.end();
        });
    } else {
        response.send('Please enter Username and Password!');
        response.end();
    }
});
//    } else {
//       res.render('index.hbs',{message: message});
//    }  

//Page Rendered on successful registration
app.post('/sign-up', urlencodedParser, (req, res) => {
    console.log(req.body);
    res.render('register-success', {
        //RegisterData:req.body.l_name,
        title: 'Talent&Skill Centre',
        name: 'WINNIE',
        registerSuccess: 'Registered successfully as: ' + req.body.F_name + ' ' + req.body.l_name
    });
    const username = req.body.username
    const firstname = req.body.F_name
    const lastname = req.body.l_name
    const password = req.body.password
    const gender = req.body.gender
    const year_of_birth = req.body.year_of_birth

    //inserting users input into user_details table
    const SqlBioData = " INSERT INTO user_details (F_name,l_name,password,gender, year_of_birth)  VALUES(?,?,?,?,?)"
    connection.query(SqlBioData, [firstname, lastname, password, gender, year_of_birth], (err, rows, fields) => {
        if (err) {
            console.log('Failed to Register User:' + err)
        } else {
            console.log('User Registered Successfully...Cheers!')
        }

    })
    //Querying registered users from database    
    uuidQuery = "SELECT MAX(uuid+1) FROM user_details;"
    const uuid_NO = connection.query(uuidQuery, (err, rows, fields) => {
        if (err) {
            console.log('Failed to Query uuid:' + err)
        } return rows
    })

    const country = req.body.country
    const county = req.body.county
    const subcounty = req.body.SubCounty
    const current_location = req.body.CurrentLocation
    //inserting user input into  physical_address database
    const sqlPhysicalAddress = "INSERT INTO physical_address (country,county,subcounty,current_location) VALUES(?,?,?,?)"
    connection.query(sqlPhysicalAddress, [country, county, subcounty, current_location], (err, rows, fields) => {
        if (err) {
            console.log('Failed to Register Physical Address:' + err)
        } else {
            console.log('User Physical Address Registered Successfully...Cheers!')
        }

    })
    const RefereeF_name = req.body.RefereeF_name
    const RefereeL_name = req.body.RefereeL_name
    const postion = req.body.postion
    const address = req.body.address
    const RefereePhone_no = req.body.RefereePhone_no
    const RefereeEmail = req.body.RefereeEmail

    //inserting user input into referees table
    const sqlReferees = "INSERT INTO referees (f_name,l_name,position,address,phone_no,email) VALUES(?,?,?,?,?,?)"
    connection.query(sqlReferees, [RefereeF_name, RefereeL_name, postion, address, RefereePhone_no, RefereeEmail], (err, rows, fields) => {
        if (err) {
            console.log('Failed to Register Referee:' + err)
        } else {
            console.log('User Referee Registered Successfully...Cheers!')
        }
    })

    const ContactPhone_no = req.body.ContactPhone_no
    const ContactEmail = req.body.ContactEmail
    const YearStarted = req.body.YearStarted
    const Awards = req.body.Awards
    //Query inserting user input into about_user table.   
    const sqlAboutUser = "INSERT INTO about_user(year_started,awards,phone_no,email) VALUES(?,?,?,?)"
    connection.query(sqlAboutUser, [YearStarted, Awards, ContactPhone_no, ContactEmail,], (err, rows, fields) => {
        if (err) {
            console.log('Failed to register about user:' + err)
        } else {
            console.log('User Abouts Registered Successfully...Cheers!')
        }
    })

});


app.listen(port, () => {
    console.log('Server is up on port ' + port)
});
