var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var session = require('express-session');

var indexRouter = require('./src/routes/index');
var resultadosRouter = require('./src/routes/resultados');
var estadiaRotas = require('./src/routes/estadiaRotas');
// var passagemRotas = require ('./src/routes/passagemRotas');
 var usersRouter = require('./src/routes/usersRouter');
var cidadesRoutes = require('./src/routes/cidadesRoutes');
var app = express();
app.use(session({
  secret:'Segredo',
  resave: false,
  saveUninitialized: false,
}));

// view engine setup
app.set('views', path.join(__dirname,"src", 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/resultados', resultadosRouter);
app.use('/estadias', estadiaRotas);
// app.use('/passagens', passagemRotas);
app.use('/users', usersRouter);
app.use('/homeUser', homeUserRoutes);

 //catch 404 and forward to error handler
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


// adicionando template engine ao express

app.set('view engine', 'ejs');

// adicionar o local de arquivos estaticos 
app.use(express.static('public'));


//porta de entrada 

app.listen(3000, () => {
  console.log("Eu estou ouvindo")
})




