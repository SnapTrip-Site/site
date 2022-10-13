const express = require('express');
const router = express.Router();
const cidadesController = require('../controllers/cidadesController');

router.get('/', cidadesController.list);

module.exports = router;