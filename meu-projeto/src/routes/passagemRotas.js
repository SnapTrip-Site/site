const express = require('express');
const PassagemController = require('../controllers/passagemController');
const router = express.Router();

router.post('/', PassagemController.filter);

module.exports = router;