module.exports = (sequelize, DataTypes) => {
    const cols = {
        passagens: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
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
        empresa: {
            type: DataTypes.STRING
        },
        tarifa: {
            type: DataTypes.STRING
        },
        horarioSaidaTime: {
            type: DataTypes.STRING
        },
        horarioSaida: {
            type: DataTypes.STRING
        },
        horarioChegada: {
            type: DataTypes.STRING
        },
        duracao: {
            type: DataTypes.STRING
        },
        duracaoMin: {
            type: DataTypes.STRING
        }
    }
    const config = {
        tablename: 'passagens',
        timestamps: false
    }
    
    const Passagens = sequelize.define('Passagens', cols, config);
    Passagens.associate = (models) => {
        Passagens.hasMany(models.Cidades, {
            as: 'origem',
            foreignKey: 'fkCidadeOrigem'
        })

        Passagens.hasMany(models.Cidades, {
            as: 'destino',
            foreignKey: 'fkCidadeDestino'
        })
    }
    return Passagens;
}