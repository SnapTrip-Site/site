var express = require('express');
var trabalheConoscoController = require(':/controllers/trabalheConoscoController')
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('trabalheconosco', { title: 'express' });
});



module.exports = router