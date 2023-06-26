var express = require('express');
var router = express.Router();
var dbConn = require('../lib/db');

router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/login', function (req, res, next) {
  res.render('login', { title: 'Express' });

});

router.get('/empresa', function (req, res, next) {
  res.render('empresa/index');
});

router.get('/docente', function (req, res, next) {
  res.render('docente/index');
});

router.get('/pro', function (req, res, next) {
  res.render('pro/index');
});

router.post('/admin', function (req, res, next) {
  var users = req.body.users;
  var password = req.body.password;

  dbConn.query("SELECT * FROM usuario WHERE us_nombre='" + users + "' AND us_password='" + password + "'", function (err, rows) {
    if (err) {
      req.flash('error', err);
      console.log(err);
    } else {
      console.log(rows);
      if (rows.length) {
        req.session = req.session || {};
        req.session.idu         = rows[0]["us_id"];
        req.session.user        = rows[0]["us_nombre"];
        req.session.password    = rows[0]["us_password"];
        req.session.admin       = true;
        req.session.docente     = true;
        req.session.pro         = true;
        req.session.empresa     = true;
        var userRole            = rows[0]["us_rol"];

        switch (userRole) {
          case "1":
            
            res.render('pro/index');
            break
          case "2":
            res.render('empresa/index');
            break;
          case "3":
            res.render('admin/index');
            break;
          case "4":
            res.render('docente/index');
            break;
          default:
            res.redirect("login");
        }
      }
    }
  });
});

router.get('/admin', function (req, res, next) {
  if (req.session && req.session.admin) {
    
    res.render('admin/index');
  } else {
    res.render('login');
  }
});

router.get('/pro', function (req, res, next) {
  if (req.session && req.session.pro) {
    
    res.render('pro/index');
  } else {
    res.render('login');
  }
});
router.get('/empresa', function (req, res, next) {
  if (req.session && req.session.empresa) {
    
    res.render('empresa/index');
  } else {
    res.render('login');
  }
});
router.get('/docente', function (req, res, next) {
  if (req.session && req.session.docente) {
    
    res.render('docente/index');
  } else {
    res.render('login');
  }
});

router.get('/logout',function(req, res){
  req.session.destroy();
  res.redirect("/");
});
module.exports = router;
