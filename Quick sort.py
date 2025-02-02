import time
import tracemalloc

def ordenacao_rapida(lista):

    if len(lista) <= 1:
        return lista
    
    pivo = lista[len(lista) // 2]
    menor = [x for x in lista if x < pivo]
    iguais = [x for x in lista if x == pivo]
    maior = [x for x in lista if x > pivo]
    
    return ordenacao_rapida(menor) + iguais + ordenacao_rapida(maior)


def ordenar_arquivo(arquivo_entrada, arquivo_saida):

    with open(arquivo_entrada, 'r', encoding='utf-8') as arquivo:
        linhas = arquivo.readlines()
    
    numeros = [int(linha.strip()) for linha in linhas]
    
    tracemalloc.start()
    
    inicio = time.time()
    linhas_ordenadas = ordenacao_rapida(numeros)
    fim = time.time()
    
    memoria_usada = tracemalloc.get_traced_memory()
    tracemalloc.stop()

    memoria_usada_kb = memoria_usada[1] / 1024
    
    with open(arquivo_saida, 'w', encoding='utf-8') as arquivo:
        arquivo.write("\n".join(map(str, linhas_ordenadas)))
    
    return fim - inicio, memoria_usada_kb


print("Escolha um arquivo para ordenar:")
print("1 - numeros_10000.txt")
print("2 - numeros_50000.txt")
print("3 - numeros_100000.txt")

opcoes = {
    "1": ("numeros_10000.txt", "QS 10k.txt"),
    "2": ("numeros_50000.txt", "QS 50k.txt"),
    "3": ("numeros_100000.txt", "QS 100k.txt")
}

escolha = input("Digite o número correspondente: ")

if escolha in opcoes:
    arquivo_entrada, arquivo_saida = opcoes[escolha]
    
    tempo_execucao, memoria_usada = ordenar_arquivo(arquivo_entrada, arquivo_saida)
    print(f"Arquivo '{arquivo_saida}' gerado com sucesso!")
    print(f"Tempo de execução: {tempo_execucao:.4f} segundos")
    print(f"Memória usada: {memoria_usada:.2f} KB")
