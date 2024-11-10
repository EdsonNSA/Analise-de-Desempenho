def ler_arquivo():
    nome_do_arquivo = input("Digite o nome do arquivo: ")
    
    try:
        with open(nome_do_arquivo, 'r', encoding='utf-8-sig') as arquivo:
            linhas = arquivo.readlines()
        
        lista = list(map(int, linhas[0].strip().split()))
        ações = int(linhas[1].strip())
        lista = lista[:]
        
        for i in range(2, 2 + ações):
            ação = linhas[i].strip()
            partes = ação.split()
            comando = partes[0]
            
            if comando == 'A':
                numero = int(partes[1])
                posição = int(partes[2])
                lista.insert(posição, numero)
            
            elif comando == 'R':
                numero = int(partes[1])
                if numero in lista:
                    lista.remove(numero)
            
            elif comando == 'P':
                print(lista)
    
    except FileNotFoundError:
        print(f"O arquivo {nome_do_arquivo} não foi encontrado.")

ler_arquivo()
