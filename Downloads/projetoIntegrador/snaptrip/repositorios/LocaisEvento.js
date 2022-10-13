module.exports = (sequelize, DataTypes) => {
    const cols = {
        idLocalDoEvento: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        fkCidade: {
            type: DataTypes.INTEGER
        },
        nome: {
            type: DataTypes.STRING
        },
        cep: {
            type: DataTypes.STRING
        },
        rua: {
            type: DataTypes.STRING
        },
        numero: {
            type: DataTypes.INTEGER
        },
        bairro: {
            type: DataTypes.STRING
        },
        latEvento: {
            type: DataTypes.DECIMAL(10,8)
        },
        longEvento: {
            type: DataTypes.DECIMAL(11,8)
        }
    }

    const config = {
        tablename: 'locaisEvento',
        timestamps: false
    }

    const locaisEvento = sequelize.define('locaisEvento', cols, config);

    return locaisEvento;
}