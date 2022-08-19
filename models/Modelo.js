//peguei o exercicío da aula para usar de exemplo para fazer nosso banco de dados


//estrutura padrão até a linha 10
module.exports = (sequelize, DataType)=>{
        const Usuario = sequelize.define('Usuario', {
            id_usuario:{
                type:DataType.INTERGER,
                primaryKey:true,
                autoIncrement:true
            },
            nome: DataType.STRING,
            email:{
                type:DataType.STRING,
                allowNull:true
            },
            senha: DataType.STRING
        },{
            tableName:'usuario',
            timestamps:false
            
        })
        
        return Usuario  
}