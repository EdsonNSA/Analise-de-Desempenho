const fs = require('fs');
const util = require('util');

function lerArquivo() {
    const nomeDoArquivo = 'arq-novo.txt';
    //const readline = require('readline').createInterface({
        //input: process.stdin,
        //output: process.stdout
    //});
    //cd /c/Users/edson/OneDrive/Área\ de\ Trabalho/Analise-de-Desempenho

    //readline.question("Digite o nome do arquivo: ", (nomeDoArquivo) => {
        try {
            const conteudo = fs.readFileSync(nomeDoArquivo, 'utf-8').split('\n');
            const lista = conteudo[0].trim().split(' ').map(Number);
            const acoes = parseInt(conteudo[1].trim());

            for (let i = 2; i < 2 + acoes; i++) {
                const acao = conteudo[i].trim().split(' ');
                const comando = acao[0];

                if (comando === 'A') {
                    const numero = parseInt(acao[1]);
                    const posicao = parseInt(acao[2]);
                    lista.splice(posicao, 0, numero);
                } else if (comando === 'R') {
                    const numero = parseInt(acao[1]);
                    const index = lista.indexOf(numero);
                    if (index !== -1) lista.splice(index, 1);
                } else if (comando === 'P') {
                    // Usei o util.inspect para exibir o array completo
                    console.log(util.inspect(lista, { maxArrayLength: null }));
                }
            }
        } catch (error) {
            console.log(`O arquivo ${nomeDoArquivo} não foi encontrado.`);
        } //finally {
            //readline.close();
        }
    //};

lerArquivo();
