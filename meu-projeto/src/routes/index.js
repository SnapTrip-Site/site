var express = require('express');
var router = express.Router();



router.get('/', function(req, res, next){
 res.render('snaptrip');
});

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