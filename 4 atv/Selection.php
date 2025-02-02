<?php
function selectionSort(&$numeros) {
    $n = count($numeros);
    for ($i = 0; $i < $n - 1; $i++) {
        $menorIndice = $i;
        for ($j = $i + 1; $j < $n; $j++) {
            if ($numeros[$j] < $numeros[$menorIndice]) {
                $menorIndice = $j;
            }
        }
        $temp = $numeros[$i];
        $numeros[$i] = $numeros[$menorIndice];
        $numeros[$menorIndice] = $temp;
    }
}

function lerArquivo($caminho) {
    $conteudo = file($caminho, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    return array_map('intval', $conteudo);
}

function arquivo_ordenado($caminho, $numeros) {
    file_put_contents($caminho, implode(PHP_EOL, $numeros));
}

function obterInfoProcessador() {
    return shell_exec('lscpu');
}


echo "Linguagem: PHP " . PHP_VERSION . "\n";
echo "Sistema: " . PHP_OS . " - " . php_uname('r') . "\n";

echo "Processador:\n" . obterInfoProcessador() . "\n";

$memoriaTotalKB = trim(shell_exec("grep MemTotal /proc/meminfo | awk '{print $2}'"));
$memoriaTotalGB = round($memoriaTotalKB / 1024 / 1024, 2);
echo "Memória RAM total: " . $memoriaTotalGB . " GB\n";


$arquivoEntrada = 'arq-desafio.txt';
$arquivoSaida = 'ordenado_selection_php.txt';

$inicioTempo = microtime(true);
$memoriaInicial = memory_get_usage() / 1024;

$numeros = lerArquivo($arquivoEntrada);
selectionSort($numeros);
arquivo_ordenado($arquivoSaida, $numeros);

$fimTempo = microtime(true);
$memoriaFinal = memory_get_usage() / 1024;

echo "Números ordenados salvos em '$arquivoSaida'.\n";
echo "Tempo de execução: " . round(($fimTempo - $inicioTempo) * 1000, 2) . " ms\n";
echo "Memória utilizada: " . round($memoriaFinal - $memoriaInicial, 2) . " KB\n";
?>
