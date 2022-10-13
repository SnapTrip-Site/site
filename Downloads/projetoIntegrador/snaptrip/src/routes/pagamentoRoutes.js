var express = require("express");
var router = express.Router();
var pagamentoController = require("../controllers/pagamentoController");


router.get("/pagamento", function(req, res, next){
    res.render("index", {title: "Express"});
});


router.get("/", pagamentoController.index);

module.exports = router;