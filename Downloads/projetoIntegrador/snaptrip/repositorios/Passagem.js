const passagensData = require('../data/passagens.json'); // o Node ja executa o JSON.parse no require, salvando como STRING;
const fs = require('fs');
const path = require('path');

const passagensJSONPath = path.join(__dirname, '../data/passagens.json');

module.exports ={
    filter (origem, destino) {  // filtro passagens pela origem e destino
       var passagensFiltradas =  passagensData.filter((passagem) => { // Filtra as passagens dp json
        if (origem === passagem.origem && destino === passagem.destino) return true
        else return false
       })
       return passagensFiltradas;
    },
    find (idPassagem) {                                       // Encontro a passagem pelo ID
        var passagem = passagensData.find((passagem) => {
            return idPassagem === passagem.id
        })
        return passagem;
    }
}

