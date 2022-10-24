const EstadiaController = {
    
    //Os produtos seriam os locais que teriamos disponiveis para a estadia 
    //mostra lista de produtos
    index: (req, res)=>{

        res.render('transporteEstadia', {cidades:[], passagensPorCidade:[]})

    },

    //dados adicionais do produto
    show:(req,res) =>{
        res.send('dados')
    }
}

module.exports = EstadiaController;