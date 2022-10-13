module.exports = (sequelize, DataTypes) => {
    const cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        nome: {
            type: DataTypes.STRING
        },
        estado: {
            type: DataTypes.STRING
        },
        tipoCidade: {
            type: DataTypes.TINYINT


        },
        rodoviaria: {
            type: DataTypes.STRING
        },
        lat_rodoviaria: {
            type: DataTypes.DECIMAL(10,8)
        },
        long_rodoviaria: {
            type: DataTypes.DECIMAL(11,8)
        },
        aeroporto: {
            type: DataTypes.STRING
        },
        lat_aeroporto: {
            type: DataTypes.DECIMAL(10,8)
        },
        long_aeroporto: {
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