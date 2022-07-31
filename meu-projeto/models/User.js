const usersData = require('../data/users.json'); // o Node ja executa o JSON.parse no require, salvando como STRING;
const fs = require('fs');
const path = require('path');

const usersJSONPath = path.join(__dirname, '../data/users.json');

module.exports = {
    save (user) {
        if (!user.name && !user.email && !user.password) return // o que for OBRIGATÓrio no formulario.

        user.id = usersData.length + 1; // Criando id para usuario.
        usersData.push(user); // Se i registro estiver correto, ele salva os dados no json de usuarios;
        fs.writeFileSync(usersJSONPath, JSON.stringify(usersData)); // convertendo em string para salvar no JSON.
        return user;
    }
};