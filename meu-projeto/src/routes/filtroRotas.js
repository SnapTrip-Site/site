const express = require('express');
const filtroController = require('../controllers/filtroController');

const router = express.Router();

router.get('/', filtroController.index);


module.exports = router