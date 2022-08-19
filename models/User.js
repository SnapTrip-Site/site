const usersData = require('../data/users.json'); // o Node ja executa o JSON.parse no require, salvando como STRING;
const fs = require('fs');
const path = require('path');
const bcryptjs = require('bcryptjs');

const usersJSONPath = path.join(__dirname, '../data/users.json');

module.exports = {
    save (user) {
        if (!user.name && !user.email && !user.password) return // o que for OBRIGATÓrio no formulario.

        user.id = usersData.length + 1; // Criando id para usuario.
        user.password = bcryptjs.hashSync(user.password, 10); // Criptografando a senha recebida pelo body no register.
        usersData.push(user); // Se i registro estiver correto, ele salva os dados no json de usuarios;
        fs.writeFileSync(usersJSONPath, JSON.stringify(usersData)); // convertendo em string para salvar no JSON.
         
        return user;
    },

    find (email) {
        const usersData = fs.readFileSync(usersJSONPath); // Lendo os dados de dentro do arquivo data/user.json;
        const users = JSON.parse(usersData); // Transformando string em JSON;
        const user = users.find(user => user.email === email); // Comparando se email passado no body está registrado no banco de dados users.json.;
        
        return user;
    },

    comparePassword(password, userPassword) {  // Recebendo o password passado no body como primeiro parametro e, senha criptografada do users.json
        return bcryptjs.compareSync(password, userPassword); // Comparando se senha do body é a mesma do users.json;
    }
};