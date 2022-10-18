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
       res.render('passagens', { passagens});
    }
}

module.exports = PassagemController;