const {Cidades} = require('../models');

module.exports = {
    async index (req, res) {
        // const cidades = await Cidades.findAll();
const cidades = [
    
]
        res.render('snaptrip', { cidades })
    }
}