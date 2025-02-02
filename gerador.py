import random

def gerar_lista(tamanho):
    numeros = list(range(1, tamanho + 1))
    random.shuffle(numeros)
    return numeros

while True:
    try:
        tamanho = int(input("Escolha o tamanho da lista (10000, 50000, 100000): "))
        if tamanho in [10_000, 50_000, 100_000]:
            break
    except:
        pass

random.seed(42)

numeros = gerar_lista(tamanho)
arquivo = f"numeros_{tamanho}.txt"

with open(arquivo, "w") as f:
    for num in numeros:
        f.write(f"{num}\n")

print(f"Arquivo '{arquivo}' gerado com sucesso!")
