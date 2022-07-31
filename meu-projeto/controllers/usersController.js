const User = require('../models/User');

module.exports = {
    register (req, res) {
        res.send('resultados',);// colocar depois da , { errors: []};  // Alterar o send para render quando tiver  a pagina de register EJS;
    },
    save (req, res) {
        const user = req.body; // Receber o usuario digitado no register;
        const errors = []; // Express validator para validar se ha ou não erro.

        if(!user.name && !user.password) {
            errors.push({msg: 'Login inválido!'}); // Se Usuario estiver errado, manda mensagem ''Login Inválido'');
            return // res.render('colocar pagina de register EJS', {errors, user}) ---- Futuramente trocar o send pelo render, e renderizar pagina de register novamente..
        }
        
        user.save(user); // se esvier tudo certo com o register, ele salva.
        res.redirect('/users/login'); // rediciona para pagina de login.
    },

    login (req, res) {
        res.send('Carregar Página de Login!');
    },
    profile () {},
};