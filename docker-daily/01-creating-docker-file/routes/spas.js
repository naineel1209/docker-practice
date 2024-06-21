var express = require('express');
var router = express.Router();

let links = [
	{"Card 1": "Lien Site 1"},
	{"Card 2":"Lien Site 2"}, 
	{"Card 3":"Lien Site 3"}, 
	{"Card 4":"Lien Site 4"},
	{"Card 5":"Lien Site 5"}, 
	{"Card 6":"Lien Site 6"}
];

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.json(links);
});

module.exports = router;
