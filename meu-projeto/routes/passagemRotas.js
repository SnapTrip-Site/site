const express = require('express');
const PassagemController = require('../controllers/passagemController');
const router = express.Router();

router.get('/', PassagemController.filter);

module.exports = router;