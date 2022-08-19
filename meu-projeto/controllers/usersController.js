const User = require('../models/User');

module.exports = {
    register (req, res) {
        res.render('userForm', {errors: []});
    },
    save (req, res) {
        const user = req.body; // Receber o usuario digitado no register;
        const errors = []; // Express validator para validar se ha ou não erro.

        if(!user.name && !user.password) {
            errors.push({msg: 'Registro inválido!'}); // Se Usuario estiver errado, manda mensagem ''Login Inválido'');
            return res.render('userForm', {errors, user});
        }
        // delete user.re_password; // usar caso tenha ''Repetir a senha'' no formulario de registro.
        User.save(user); // se esvier tudo certo com o register, ele salva.
        res.redirect('/users/login'); // rediciona para pagina de login.
    },

    login (req, res) {
        res.render('userForm');
    },

    auth (req, res) {
        const userReceived = req.body; // Recebe o user passado no body de login;
        const errors = [];

        const userFound = User.find(userReceived.email); // Procura se o email passado no body está registrado no json de usuarios;

        if(!userFound) {  // SE, não achar o email, manda mensagem de login inválido e volta para pagina de login.
            errors.push({msg: 'Login Inválido!'});
            return res.render('userForm', {errors, userReceived});
        }

        const samePassword = User.comparePassword(userReceived.password, userFound.password);
            // Comparando se a senha criptografada é a mesma que foi recebida pelo body;
        if(!samePassword) { // Se não fora mesma senha, volta para página de login!
            errors.push({msg: 'Senha Inválido!'});
            return res.render('userForm', {errors, userReceived});
        }

<<<<<<< HEAD
       // req.session.usuario = userFound; // se tudo for ok, cadastra o usuario na sessão;
=======
       // req.session.usuario = userReceived; // se tudo for ok, cadastra o usuario na sessão;
>>>>>>> 4f76fb66d7190887699ce3874f090adc28a9bfb8

        return res.send('Sucesso'); // rediciona o usuario para a página bloqueada, que só logado pode acessar, normalmente, profile.
    },

    profile () {},
};