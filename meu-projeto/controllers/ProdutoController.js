const ProdutoController = {
    
    //Os produtos seriam os locais que teriamos disponiveis para a estadia 
    criarProduto: (req, res) => {
        res.send('Criando produto')
    },
    //mostra lista de produtos
    index: (req, res)=>{
        res.send('index de produtos')
    },

    //dados adicionais do produto
    show:(req,res) =>{
        res.send('dados ')
    }

}

module.exports = ProdutoController;