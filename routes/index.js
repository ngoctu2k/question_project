var express = require('express');
var router = express.Router();
var dbconnect = require('../db/dbconnect')
var isAuthenticated = false;


// Define authentication middleware BEFORE your routes
var authenticate = function (req, res, next) {
  // your validation code goes here. 
  if (isAuthenticated) {
    next();
  }
  else {
    // redirect user to authentication page or throw error or whatever
    res.redirect('login')
  }
}

/* GET admin page  page. */
router.get('/admin', authenticate, function (req, res, next) {
  dbconnect.query('SELECT * FROM `questions`', (err, rows, fields) => {
    if (err) throw err
    res.render('admin', { data: rows.reverse() });

  })
});

/* GET login page  page. */
router.get('/login', function (req, res, next) {
  res.render('login');
});

/* GET login page  page. */
router.post('/login', function (req, res, next) {
  const username = req.body.username;
  const password = req.body.password;
  dbconnect.query(`SELECT * FROM \`user\` WHERE \`username\`='${username}' AND \`passwword\`='${password}'`, (err, rows, fields) => {
    if (err) throw err
    if (!rows.length) {
      res.status(500).render('login', {
        errors: "sai tài khoản hoặc mật khẩu, 2k kiểm tra lại nhé !"
      })
    }
    if (rows.length) {
      isAuthenticated = true;
      res.redirect('/admin')
    }
  })
});
/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index');

});

/* GET home page. */
router.post('/send-question', function (req, res, next) {
  const name = req.body.name;
  const question = req.body.question;
  var date = new Date();

  var time = ("0" + date.getDate()).slice(-2) + "-" + ("0" + (date.getMonth() + 1)).slice(-2) + "-" +
    date.getFullYear() + " " + ("0" + date.getHours()).slice(-2) + ":" + ("0" + date.getMinutes()).slice(-2);
  dbconnect.query(`INSERT INTO \`questions\`(\`name\`, \`question\`,\`time\`) VALUES ('${name}','${question}','${time}')`, (err, rows, fields) => {
    if (err) throw err
    const arrMess = [
      'câu hỏi đã được gửi đến ông chủ kim 2k rồi nhé !',
      'cảm ơn bạn đã gửi câu hỏi cho 2k nhé !',
      '2k đã nhận được câu hỏi của bạn rồi nhé '
    ]
    const number = Math.floor(Math.random() * 3);


    res.render('index', {
      successful: arrMess[number]
    });
  })

});

module.exports = router;
