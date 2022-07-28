const { Router } = require('express');
const express = require('express');
const ProdutoController = require('../controllers/ProdutoController');

const router = express.Router();

router.get('/criar', ProdutoController.criarProduto);
router.get('/', ProdutoController.index);


