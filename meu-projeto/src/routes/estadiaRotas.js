const express = require('express');
const EstadiaController = require('../controllers/estadiaController');

const router = express.Router();

router.get('/', EstadiaController.index);


module.exports = router