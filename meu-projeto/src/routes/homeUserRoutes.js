var express = require("express");
var router = express.Router();
var homeUserController = require("../controllers/homeUserController");


router.get("/", function(req, res, next){
    res.render("index", {title: "Express"});
});


router.get("/homeUser", homeUserController.index);

module.exports = router;