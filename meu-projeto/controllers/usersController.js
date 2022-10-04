const User = require('../repositorios/User');
const bcryptjs = require('bcryptjs');

module.exports = {
    async register (req, res) {
        res.render('userForm', {errors: []});
    },
    async save (req, res) {
        const user = req.body; // Receber o usuario digitado no register;
        const errors = []; // Express validator para validar se ha ou não erro.

        if(!user.name && !user.password) {
            errors.push({msg: 'Registro inválido!'}); // Se Usuario estiver errado, manda mensagem ''Login Inválido'');
            return res.render('userForm', {errors, user});
        }

        User.save(user); // se esvier tudo certo com o register, ele salva.
        res.redirect('/users/login'); // rediciona para pagina de login.
    },

    async login (req, res) {
        res.render('userForm', {errors: []});
    }, 
    async auth (req, res) {
        const userReceived = req.body;
        const errors = [];

        const userFound = await User.find(userReceived.email); 

        if(!userFound) { 
            errors.push({msg: 'Login Inválido!'});
            return res.render('userForm', {errors, userReceived});
        }
        const samePassword = bcryptjs.compareSync(userReceived.password, userFound.senha);
        
        if(!samePassword) {
            errors.push({msg: 'Senha Inválido!'});
            return res.render('userForm', {errors, userReceived});
        }

            delete userReceived.password;
            req.session.userLogged = userReceived;
            console.log(req.session)
        
        return res.render('homeUser', {user: userFound}); 
    }, 
    async profile (req, res) {
        return res.render('homeUser', {
            userLogged: req.session.userReceived
        })
    },
    async logout (req, res) {
        req.session.destroy();
        return res.redirect('/');
    }
};