const Passagem = require('../models/Passagem');
const PassagemController = {
    filter (req, res) {
       const destino =  req.query.destino;
       const origem = req.query.origem;
       var passagens = Passagem.filter(origem, destino)
       console.log(passagens);
       res.render('resultados',{passagens});
    },
    find (req, res) {},
    store (req, res) {},
    update (req, res) {},
    destroy (req, res) {},
}

module.exports = PassagemController;