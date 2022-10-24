var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookies = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');
var loggedUserDataMiddleware = require('./middleware/loggedUserDataMiddleware');

var indexRouter = require('./routes/index');
var resultadosRouter = require('./routes/resultados');
var estadiaRotas = require('./routes/estadiaRotas');
var passagemRotas = require ('./routes/passagemRotas');
var usersRouter = require('./routes/usersRouter');
var cidadesRoutes = require('./routes/cidadesRoutes');
var trabalheConosco = require('./routes/trabalheConosco');
var app = express();

app.use(session({
  secret:'Segredo',
  resave: false,
  saveUninitialized: false,
}));


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookies());
app.use(express.static(path.join(__dirname, '../public')));

app.use('/', indexRouter);
app.use('/resultados', resultadosRouter);
app.use('/estadias', estadiaRotas);
app.use('/passagens', passagemRotas);
app.use('/users', usersRouter);
app.use('/', trabalheConosco);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
