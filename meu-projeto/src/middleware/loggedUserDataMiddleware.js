const {User} = require('../models/Usuario');

async function loggedUserDataMiddleware (req, res, next) {
    res.locals.isLogged = false;
    if(req.session.userLogged){
       return next()
    };
    let emailInCookie = req?.cookies?.userEmail;
    if(!emailInCookie){
        return res.redirect('/users/login')
    }
    let userFromCookie = await User.findOne({
        email: emailInCookie
    })
    if(userFromCookie) {
        req.session.userLogged = userFromCookie;
    }
    if(req.session.userLogged){
        res.locals.isLogged = true;
    }
    res.locals.user = userFromCookie;
    next()
}

module.exports = loggedUserDataMiddleware;