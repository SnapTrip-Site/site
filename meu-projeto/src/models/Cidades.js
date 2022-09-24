module.exports = (sequelize, DataTypes) => {
    const cols = {
        idCidade: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        nomeCidade: {
            type: DataTypes.STRING
        },
        estado: {
            type: DataTypes.STRING
        },
        tipoCidade: {
            type: DataTypes.INTEGER
        },
        rodoviaria: {
            type: DataTypes.STRING
        },
        latRodoviaria: {
            type: DataTypes.DECIMAL(10,8)
        },
        longRodoviaria: {
            type: DataTypes.DECIMAL(11,8)
        },
        aeroporto: {
            type: DataTypes.STRING
        },
        latAeroporto: {
            type: DataTypes.DECIMAL(10,8)
        },
        longAeroporto: {
            type: DataTypes.DECIMAL(11,8)
        }
    }
    const config = {
        tablename: 'cidades',
        timestamps: false
    }

    const Cidades = sequelize.define('Cidades', cols, config);

    return Cidades;
}