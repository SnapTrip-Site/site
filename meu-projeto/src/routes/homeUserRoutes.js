const express = require('express');
const homeUserController = require('../controllers/homeUserRoutes');

const router = express.Router();

router.get('/', homeUserController.index);


module.exports = router