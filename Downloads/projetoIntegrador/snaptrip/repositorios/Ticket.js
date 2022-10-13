module.exports = (sequelize, dataTypes) => {
    const cols = {
        passagens: {
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        fkCidadeOrigem: {
            type: DataTypes.INTEGER
        },
        fkCidadeDestino: {
            type: DataTypes.INTEGER
        },
        meio: {
            type: DataTypes.STRING
        },
        lugar: {
            type: DataTypes.STRING
        },
        tarifa: {
            type: DataTypes.DECIMAL(6,2)
        },
        data: {
            type: DataTypes.DATE
        },
        horarioSaida: {
            type: DataTypes.TIME
        },
        horarioChegada: {
            type:DataTypes.TIME
        }
    }

    const config = {
        tableName: 'Passagens',
        timesTamps: false
    }

    const Ticket = sequelize.define('Passagens', cols, config);

    return Ticket;

}