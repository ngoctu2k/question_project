var express = require('express');
var router = express.Router();
var dbconnect = require('../db/dbconnect')

/* GET admin page  page. */
router.get('/admin', function(req, res, next) {
    res.render('admin');
});

/* GET login page  page. */
router.get('/login', function(req, res, next) {
  res.render('login');
});

/* GET login page  page. */
router.post('/login', function(req, res, next) {
  console.log(req.body);
  const username = req.body.username;
  const password = req.body.password;
  dbconnect.query(`SELECT * FROM \`user\` WHERE \`username\`='${username}' AND \`passwword\`='${password}'`, (err, rows, fields) => {
    console.log('The solution is: ', rows)
    console.log('length',rows.length);
    if (err) throw err
    if(rows.length) {
      res.redirect('/admin')
    }
  })
});
/* GET home page. */
router.get('/', function(req, res, next) {
  dbconnect.query('SELECT * FROM `questions`', (err, rows, fields) => {
    if (err) throw err
    res.render('index', { title: 'Express' });
    console.log('The solution is: ', rows)
  })

});

module.exports = router;
