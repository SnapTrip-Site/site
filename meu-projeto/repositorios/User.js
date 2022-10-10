const bcryptjs = require('bcryptjs');
const {User} = require('../models');

module.exports = {
    async save (input) {
        if (!input.name && !input.email && !input.password) return // o que for OBRIGATÓrio no formulario.
        input.password = bcryptjs.hashSync(input.password, 10); // Criptografando a senha recebida pelo body no register.
        const user = await User.create({
            nome: input.name,
            senha: input.password,
            email: input.email
        })

        return user;
    },

    async find (email) {
        const user = await User.findOne({
            where: {email: email}
        });
        if(user === null) {
            console.log('Email não encontrado!')
        };
        return user;
    }
};