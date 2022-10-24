var express = require('express');
const homeController = require('../controllers/homeController');
var router = express.Router();

const transporteEstadia = require("../controllers/estadiaController");
const EstadiaController = require('../controllers/estadiaController');


router.get('/', homeController.index);

router.get('/contato', (req, res) => {
    res.send('Contatos');
});

router.get('/sobre', (req, res) => {
    res.send('Sobre Nós');
});

router.get('/ajuda', (req, res) => {
    res.send('Ajuda');
});

router.get("/estadias", EstadiaController.index);

module.exports = router