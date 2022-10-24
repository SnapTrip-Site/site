const express = require('express');
const trabalheConoscoController = require('../controllers/trabalheConoscoController');
const router = express.Router();

/* GET home page. */
router.get('/trabalhe', trabalheConoscoController.list);

module.exports = router