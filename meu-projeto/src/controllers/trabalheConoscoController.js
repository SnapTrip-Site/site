const {Cidades} = require('../models');


module.exports = {
    async list (req, res) {
        const cidades = await Cidades.findAll();

        res.render('trabalheConosco', { cidades })
    }
}