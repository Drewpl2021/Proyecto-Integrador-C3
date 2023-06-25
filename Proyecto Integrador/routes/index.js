var express = require('express');
var router = express.Router();
var dbConn = require('../lib/db');

router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/login', function(req, res, next) {
  res.render('login');
});

router.get('/admin', function(req, res, next) {
  if (req.session && req.session.admin) {
    res.render('admin/index');
  } else {
    res.render('admin/index');
  }
});

router.post('/admin', function(req, res, next) {
  var users = req.body.users;
  var password = req.body.password;
  
  dbConn.query("SELECT * FROM usuario WHERE us_nombre='"+users+"' AND us_password='"+password+"'", function(err, rows) {
    if (err) {
      req.flash('error', err);
      console.log(err);
    } else {
      console.log(rows);
      if (rows.length) {
        req.session = req.session || {};
        req.session.idu = rows[0]["us_id"];
        req.session.user = rows[0]["us_nombre"];
        req.session.password = rows[0]["us_password"];
        req.session.admin = true;
        res.redirect("/admin"); // Redirige a /admin en caso de autenticación exitosa
      } else {
        //req.flash('success', 'El usuario no existe');
        res.redirect("/"); // Redirige a / en caso de autenticación fallida
      }
    }
  });
});

module.exports = router;
