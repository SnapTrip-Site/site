module.exports = (sequelize, dataTypes) => {
    const cols = {
        idEstadia: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        ifCidade: {
            type: dataTypes.INTEGER
        },
        tipoEstadia: {
            type: dataTypes.STRING
        },
        tipoAcomodacao: {
            type: dataTypes.STRING
        },
        cep: {
            type: dataTypes.STRING
        },
        rua: {
            type: dataTypes.STRING
        },
        numero: {
            type: dataTypes.INTEGER
        },
        bairro: {
            type: dataTypes.STRING
        },
        latitude: {
            type: dataTypes.DECIMAL
        },
        longitude: {
            type: dataTypes.DECIMAL
        },
        avaliacao: {
            type: dataTypes.DECIMAL(2,1)
        },
        totalAvaliacao: {
            type: dataTypes.STRING
        },
        diaria: {
            type: dataTypes.DECIMAL(6,2)
        },
        tipoCama: {
            type: dataTypes.STRING
        },
        cafeDaManha: {
            type: dataTypes.STRING
        }
    }

    const config = {
        tablename: 'Estadia',
        timestamps: false
    }

    const Estadia = sequelize.define('Estadia', cols, config);

    return Estadia;
}