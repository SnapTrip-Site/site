
const bcryptjs = require('bcryptjs');
const userRepository = require('../../repositorios/User');
const {Cidades, User} = require('../models');


module.exports = {
    async register (req, res) {
        res.cookie('teste', 'Olá', { maxAge: 1000});
        res.render('userForm', {errors: []});
    },
    async save (req, res) {
        const user = req.body; // Receber o usuario digitado no register;
        const errors = []; // Express validator para validar se ha ou não erro.

        if(!user.name && !user.password) {
            errors.push({msg: 'Registro inválido!'}); // Se Usuario estiver errado, manda mensagem ''Login Inválido'');
            return res.render('userForm', {errors, user});
        }

        userRepository.save(user); // se esvier tudo certo com o register, ele salva.
        res.redirect('/users/login'); // rediciona para pagina de login.
    },

    async login (req, res) {
        res.render('userForm', {errors: []});
    }, 
    async auth (req, res) {
        const userReceived = req.body;
        const errors = [];
        const userFound = await User.findOne({where: {email: userReceived.email}})

        if(!userFound) { 
            errors.push({msg: 'Login Inválido!'});
            return res.render('userForm', {errors, userReceived});
        }
        console.log(userFound)
        const samePassword = bcryptjs.compareSync(userReceived.password, userFound.senha);
        
        if(!samePassword) {
            errors.push({msg: 'Senha Inválida!'});
            return res.render('userForm', {errors, userReceived});
        }

        delete userFound.password;
        req.session.userLogged = userFound;

        if(req.body.remember_user) {
            res.cookie("user", req.body.email, {maxAge: (1000 * 60) * 30});
        }
        
        return res.redirect('/users/profile');
        
    }, 
    async profile (req, res) {
        const cidades = await Cidades.findAll();
        return res.render('homeUser', {
            user: req.session.userLogged, 
            cidades
        })
    },
    async logout (req, res) {
        req.session.destroy();
        res.clearCookie("user");
        return res.redirect('/');
    }
};