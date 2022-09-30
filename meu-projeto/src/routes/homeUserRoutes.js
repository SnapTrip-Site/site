var express = require("express");
var router = express.Router();
var homeUserController = require("../controllers/homeUserController");


router.get("/homeUser", function(req, res, next){
    res.render("index", {title: "Express"});
});


router.get("/", homeUserController.index);

module.exports = router;