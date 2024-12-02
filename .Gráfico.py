import matplotlib.pyplot as plt

valores = [
    [17759.48, 41999.51, 11759.86, 26421.004],
    [17708.74, 41705.35, 11739.43, 26235.95],
    [1754.8, 1804.4, 516.36, 516.36],
    [1732.0, 1814.0, 516.36, 516.36]
]
rotulos = ["Selection.py", "bubble.py", "Selection.php", "bubble.php"]
cores = ["blue", "orange", "green", "red"]
ylabels = ["Tempo (ms)", "Tempo (ms)", "Memória (KB)", "Memória (KB)"]
titulos = ["Tempo - Média","Tempo - Mediana","Memória - Média","Memória - Mediana"]

fig, axs = plt.subplots(2, 2, figsize=(10, 10))

for i, (valores_graf, cor, ylabel, titulo) in enumerate(zip(valores, cores, ylabels, titulos)):
    barras = axs[i // 2, i % 2].bar(rotulos, valores_graf, color=cor)
    axs[i // 2, i % 2].set_ylabel(ylabel)
    axs[i // 2, i % 2].set_title(titulo)

    if ylabel == "Tempo (ms)":
        axs[i // 2, i % 2].set_ylim([0, 50000])
    elif ylabel == "Memória (KB)":
        axs[i // 2, i % 2].set_ylim([0, 3000])

    for barra in barras:
        altura = barra.get_height()
        axs[i // 2, i % 2].annotate(f'{altura:.2f}', xy=(barra.get_x() + barra.get_width() / 2, altura),
                    xytext=(0, 3), textcoords="offset points",
                    ha='center', va='bottom')

plt.tight_layout()
plt.show()