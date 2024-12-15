import time
import psutil
import platform
import cpuinfo
import subprocess


def bubble_sort(numeros):
    for i in range(len(numeros) - 1):
        for j in range(len(numeros) - 1 - i):
            if numeros[j] > numeros[j + 1]:
                numeros[j], numeros[j + 1] = numeros[j + 1], numeros[j]

def ler_arquivo(caminho):
    with open(caminho, 'r', encoding='utf-8-sig') as arquivo:
        return [int(linha.strip()) for linha in arquivo]

def arquivo_ordenado(caminho, numeros):
    with open(caminho, 'w') as arquivo:
        arquivo.writelines(f"{num}\n" for num in numeros)

def obter_info_lscpu():
        cpu_info = subprocess.check_output("lscpu", shell=True, text=True)
        return cpu_info

print(f"Linguagem: Python {platform.python_version()}")

info_sistema = platform.uname()
print(f"Sistema: {info_sistema.system} {info_sistema.release}")

print("processador:")

print(obter_info_lscpu())

print(f"Memória RAM total: {psutil.virtual_memory().total / (1024 ** 3):.2f} GB")  

entrada = 'arq-desafio.txt'
saida = 'ordenado_bubble_py.txt'

inicio_tempo = time.time()
processo = psutil.Process()

mem_inicio = processo.memory_info().rss / 1024
numeros = ler_arquivo(entrada)
bubble_sort(numeros)
arquivo_ordenado(saida, numeros)
mem_fim = processo.memory_info().rss / 1024

fim_tempo = time.time()

print(f"Números ordenados foram salvos em '{saida}'.")
print(f"Tempo de execução: {round((fim_tempo - inicio_tempo) * 1000, 2)} ms")
print(f"Memória utilizada: {round(mem_fim - mem_inicio, 2)} KB")
