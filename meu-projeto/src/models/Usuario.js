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
        sobrenome: {
            type: DataTypes.STRING
        },
        email: {
            type: DataTypes.STRING
        },
        senha: {
            type: DataTypes.STRING
        },

    }
    const config = {
        tableName: 'usuarios',
        timestamps: false
    }

    const User = sequelize.define('User', cols, config);

    return User;
}