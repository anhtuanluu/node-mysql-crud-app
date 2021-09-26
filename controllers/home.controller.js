const fs = require('fs');
const utf8 = require('utf8');

exports.getHomePage = (req, res) => {
    let query = "SELECT * FROM `workers` ORDER BY id ASC ";
    db.query(query, (err, result) => {
        if (err) {
            res.redirect('/');
        }
        // console.log(result);
        res.render('index.ejs', {
            title: "EVNPSC",
            players: result
        });
    });
};
