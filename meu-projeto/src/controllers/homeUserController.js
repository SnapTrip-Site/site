const {HomeUser} = require('../models');

module.exports = {
    async index (req, res) {
        const homeUser = await homeUser.findAll();

        res.render('snaptrip', { homeUser })
    }
}