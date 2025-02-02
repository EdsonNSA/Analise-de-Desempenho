import time
import heapq

def heap_sort(lista):

    heapq.heapify(lista)
    ordenado = [heapq.heappop(lista) for _ in range(len(lista))]
    return ordenado

def ordenar_arquivo(arquivo_entrada, arquivo_saida):

    with open(arquivo_entrada, 'r', encoding='utf-8') as arquivo:
        numeros = [int(linha.strip()) for linha in arquivo.readlines()]
    
    inicio = time.time()
    numeros_ordenados = heap_sort(numeros)
    fim = time.time()

    with open(arquivo_saida, 'w', encoding='utf-8') as arquivo:
        arquivo.write("\n".join(map(str, numeros_ordenados)))

    return fim - inicio

print("Escolha um arquivo para ordenar:")
print("1 - numeros_10000.txt")
print("2 - numeros_50000.txt")
print("3 - numeros_100000.txt")

opcoes = {
    "1": ("numeros_10000.txt", "HS 10k.txt"),
    "2": ("numeros_50000.txt", "HS 50k.txt"),
    "3": ("numeros_100000.txt", "HS 100k.txt")
}

escolha = input("Digite o número correspondente: ")

if escolha in opcoes:
    arquivo_entrada, arquivo_saida = opcoes[escolha]
    
    tempo_execucao = ordenar_arquivo(arquivo_entrada, arquivo_saida)
    print(f"Arquivo '{arquivo_saida}' gerado com sucesso!")
    print(f"Tempo de execução: {tempo_execucao:.4f} segundos")

