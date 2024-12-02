<?php
function lerArquivo() {
    $nomeDoArquivo = 'arq-novo.txt';
    //echo "Digite o nome do arquivo: ";
    //$nomeDoArquivo = trim(fgets(STDIN));

    if (!file_exists($nomeDoArquivo)) {
        echo "O arquivo $nomeDoArquivo não foi encontrado.\n";
        return;
    }

    $linhas = file($nomeDoArquivo);

    $lista = array_map('intval', explode(' ', trim($linhas[0])));
    $acoes = intval($linhas[1]);

    for ($i = 2; $i < 2 + $acoes; $i++) {
        $acao = $linhas[$i];
        $partes = explode(' ', $acao);
        $comando = $partes[0];

        if ($comando === 'A') {
            $numero = intval($partes[1]);
            $posicao = intval($partes[2]);
            array_splice($lista, $posicao, 0, $numero);
        } elseif ($comando === 'R') {
            $numero = intval($partes[1]);
            $index = array_search($numero, $lista);
            if ($index !== false) {
                array_splice($lista, $index, 1);
            }
        } elseif ($comando === 'P') {
            print_r($lista);
        }
    }
}

lerArquivo();