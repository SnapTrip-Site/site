// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const usersController = require('../controllers/usersController');

/* GET - /users/register */
router.get('/register', usersController.register);
router.post('/register', usersController.save);

/* GET - /users/login */
router.get('/login', usersController.login);
router.post('/login', usersController.auth);

/* GET - /users/profile */
// router.get('/profile', usersController.profile);

// router.get("/", usersController.index)
module.exports = router;
