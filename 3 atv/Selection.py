import time
import psutil
import platform
import cpuinfo

def selection_sort(numeros):
    n = len(numeros)
    for i in range(n):
        menor_indice = i
        for j in range(i + 1, n):
            if numeros[j] < numeros[menor_indice]:
                menor_indice = j
        numeros[i], numeros[menor_indice] = numeros[menor_indice], numeros[i]

def ler_arquivo(caminho):
    with open(caminho, 'r', encoding='utf-8-sig') as arquivo:
        return [int(linha.strip()) for linha in arquivo]

def arquivo_ordenado(caminho, numeros):
    with open(caminho, 'w') as arquivo:
        arquivo.writelines(f"{num}\n" for num in numeros)


print(f"Linguagem: Python {platform.python_version()}")

info_sistema = platform.uname()
print(f"Sistema: {info_sistema.system} {info_sistema.release}")

print(f"Processador: {cpuinfo.get_cpu_info()['brand_raw']}")  

print(f"Memória RAM total: {psutil.virtual_memory().total / (1024 ** 3):.2f} GB")  

entrada = 'arq.txt'
saida = 'ordenado_seletion_py.txt'

inicio_tempo = time.time()
processo = psutil.Process()

mem_inicio = processo.memory_info().rss / 1024
numeros = ler_arquivo(entrada)
selection_sort(numeros)
arquivo_ordenado(saida, numeros)
mem_fim = processo.memory_info().rss / 1024

fim_tempo = time.time()

print(f"Números ordenados foram salvos em '{saida}'.")
print(f"Tempo de execução: {round((fim_tempo - inicio_tempo) * 1000, 2)} ms")
print(f"Memória utilizada: {round(mem_fim - mem_inicio, 2)} KB")