var express = require('express');
const homeController = require('../controllers/homeController');
var router = express.Router();



router.get('/', homeController.index);

router.get('/trabalhe', (req, res) => {
    res.render('trabalheConosco');
});

router.get('/contato', (req, res) => {
    res.send('Contatos');
});

router.get('/sobre', (req, res) => {
    res.send('Sobre Nós');
});

router.get('/ajuda', (req, res) => {
    res.send('Ajuda');
});



module.exports = router