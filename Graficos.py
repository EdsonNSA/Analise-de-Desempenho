import matplotlib.pyplot as plt

algorithms = ['Quick Sort', 'Heap Sort', 'Merge Sort']
input_sizes = ['10K', '50K', '100K']
execution_times = {
    'Quick Sort': [0.1335, 0.5010, 1.0100],
    'Heap Sort': [0.0191, 0.0469, 0.0917],
    'Merge Sort': [0.2294, 1.3470, 3.0349]
}

colors = ['b', 'g', 'r']
markers = ['o', 'o', 'o']

tick_labels_10k = ['0.0', '0.05', '0.10', '0.15', '0.20', '0.25']
tick_labels_50k = ['0.0', '0.5', '1.0', '1.5', '2.0']
tick_labels_100k = ['0.0', '0.5', '1.0', '1.5', '2.0', '2.5', '3.0', '3.5']

for size, labels in zip(input_sizes, [tick_labels_10k, tick_labels_50k, tick_labels_100k]):
    plt.figure()
    alg_labels = [f'{alg} ({execution_times[alg][input_sizes.index(size)]:.4f}s)' for alg in algorithms]
    plt.bar(alg_labels, [execution_times[alg][input_sizes.index(size)] for alg in execution_times])
    plt.ylabel('Tempo de Execução (s)')
    plt.title(f'Tempo de Execução para Entrada {size}')
    plt.yticks(ticks=[float(label) for label in labels], labels=labels)

    for alg in execution_times:
        plt.axhline(y=execution_times[alg][input_sizes.index(size)], color='r', linestyle='--')

    plt.show()

plt.figure()
for i, alg in enumerate(execution_times):
    plt.plot(input_sizes, execution_times[alg], label=f'{alg}', color=colors[i], marker=markers[i], linestyle='--')

plt.ylabel('Tempo de Execução (s)')
plt.title('Tempo de Execução Geral')
plt.legend().remove()
plt.grid(True, linestyle='--', alpha=0.7)

for i, alg in enumerate(execution_times):
    plt.text(i, -0.5, '●', ha='center', va='center', color=colors[i], fontsize=14)

plt.xticks(range(len(algorithms)), algorithms)

plt.show()
