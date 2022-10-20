const { sequelize } = require('../models');

const PassagemController = {
    async filter (req, res) {
       const destino =  req.body.visitor_destino;
       const origem = req.body.visitor_origem;

       const query = `SELECT 
            passagens,
            origem.nome AS origem,
            destino.nome AS destino,
            meio,
            empresa,
            tarifa,
            horarioSaidaTime,
            horarioSaida,
            horarioChegada,
            duracao,
            duracaoMin
        FROM
            Passagens AS Passagens
        LEFT JOIN
            cidades AS origem ON origem.id = fkCidadeOrigem
        LEFT JOIN
            cidades destino ON destino.id = fkCidadeDestino
        WHERE
            Passagens.fkCidadeDestino = ${destino}
        AND Passagens.fkCidadeOrigem = ${origem};`


       const [passagens] = await sequelize.query(query);

        const passagensPorCidade = []
        passagens.forEach(passagem => {
            const { origem, destino, tarifa, horarioSaida, horarioChegada} = passagem;
            const novaPassagem = {destino, tarifa, horarioSaida, horarioChegada}; 
            const passagemEncontrada = passagensPorCidade.find(cidadeCadastrada => cidadeCadastrada.origem == origem);
            if(passagemEncontrada) {
                passagemEncontrada.passagens.push(novaPassagem);
            }else {
                passagensPorCidade.push({
                    origem,
                    passagens: [novaPassagem]
                })
            }
        })

        console.log(JSON.stringify(passagensPorCidade, null, 2))
       res.render('passagens', { passagensPorCidade: passagensPorCidade.map(passagemCidade => ({
        ...passagemCidade,
        passagem: passagemCidade.passagens.flat()
      })) });
    }
}

module.exports = PassagemController;