import time

def merge_sort(lista):

    if len(lista) <= 1:
        return lista

    meio = len(lista) // 2
    esquerda = merge_sort(lista[:meio])
    direita = merge_sort(lista[meio:])

    return merge(esquerda, direita)

def merge(esquerda, direita):

    resultado = []
    i = j = 0

    while i < len(esquerda) and j < len(direita):
        if esquerda[i] < direita[j]:
            resultado.append(esquerda[i])
            i += 1
        else:
            resultado.append(direita[j])
            j += 1

    resultado.extend(esquerda[i:])
    resultado.extend(direita[j:])
    
    return resultado

def ordenar_arquivo(arquivo_entrada, arquivo_saida):

    with open(arquivo_entrada, 'r', encoding='utf-8') as arquivo:
        numeros = [int(linha.strip()) for linha in arquivo.readlines()]
    
    inicio = time.time()
    numeros_ordenados = merge_sort(numeros)
    fim = time.time()

    with open(arquivo_saida, 'w', encoding='utf-8') as arquivo:
        arquivo.write("\n".join(map(str, numeros_ordenados)))

    return fim - inicio

print("Escolha um arquivo para ordenar:")
print("1 - numeros_10000.txt")
print("2 - numeros_50000.txt")
print("3 - numeros_100000.txt")

opcoes = {
    "1": ("numeros_10000.txt", "MS 10k.txt"),
    "2": ("numeros_50000.txt", "MS 50k.txt"),
    "3": ("numeros_100000.txt", "MS 100k.txt")
}

escolha = input("Digite o número correspondente: ")

if escolha in opcoes:
    arquivo_entrada, arquivo_saida = opcoes[escolha]
    
    tempo_execucao = ordenar_arquivo(arquivo_entrada, arquivo_saida)
    print(f"Arquivo '{arquivo_saida}' gerado com sucesso!")
    print(f"Tempo de execução: {tempo_execucao:.4f} segundos")
