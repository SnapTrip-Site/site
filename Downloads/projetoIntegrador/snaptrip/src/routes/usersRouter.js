// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const usersController = require('../controllers/usersController');

// Middleware
const loggedUserMiddleware =  require('../../middleware/loggedUserMiddleware');
const notLoggedUserMiddleware = require('../../middleware/notLoggedUserMiddleware');
const loggedUserDataMiddleware = require('../../middleware/loggedUserDataMiddleware');

/* GET - /users/register */
router.get('/register', loggedUserMiddleware, usersController.register);
router.post('/register', usersController.save);

/* GET - /users/login */
router.get('/login', loggedUserMiddleware, usersController.login);
router.post('/login', usersController.auth);

/* GET - /users/profile */
router.get('/profile', loggedUserDataMiddleware, usersController.profile);

router.get('/logout', notLoggedUserMiddleware, usersController.logout);
module.exports = router;
