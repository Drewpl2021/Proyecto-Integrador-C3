var express = require('express');
var router = express.Router();
var dbConn = require('../lib/db');

router.get('/categorias', function(req, res, next) {
  dbConn.query('SELECT * FROM categorias ORDER BY id desc', function(err, rows) {
    if (err) {
      req.flash('error', err);
      // Renderizar una página de error en lugar de una página vacía
      return res.render('admin/error');
    } else {
      // Renderizar la vista 'admin/categorias' con los datos obtenidos de la consulta
      res.render('admin/categorias', { data: rows });
    }
  });
});

module.exports = router;
