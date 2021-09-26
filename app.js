const express = require('express');
const fileUpload = require('express-fileupload');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
// const puppeteer = require("puppeteer");
const app = express();

const playerRoutes = require('./routes/player.routes');
const homeRoutes = require('./routes/index.routes');
const port = 2000;

var pool  = mysql.createPool({
    connectionLimit : 10,
    host: 'db',
    user: 'root',
    password: 'root',
    database: 'worker',
    port: '3306',
    charset : 'latin1'
  });
global.db = pool;

app.set('port', process.env.port || port); 
app.set('views', __dirname + '/views'); 
app.set('view engine', 'ejs'); 
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); 
app.use(express.static(path.join(__dirname, 'public'))); 
app.use(fileUpload()); 

// routes
app.use('/', homeRoutes);
app.use('/player', playerRoutes);
app.get('*', function(req, res, next){
    res.status(404);

    res.render('404.ejs', {
        title: "Page Not Found",
    });

});

app.listen(port, () => {
    console.log(`Server running on port: ${port}`);
});