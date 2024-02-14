import os
import subprocess

# Armazena a lista de players em uma variável
players = subprocess.run(
    ['playerctl', '-l'], capture_output=True, text=True).stdout.strip().split('\n')

# Verifica se há players em execução
if not players:
    print("Nenhum player em execução.")
else:
    # Define o caminho do arquivo de texto
    output_file = os.path.expanduser("~/.config/i3/play/players.txt")

    # Salva a lista de players no arquivo de texto
    with open(output_file, 'w') as file:
        file.write('\n'.join(players))

    # print(f"Lista de players salva em {output_file}")

# Verifica se o arquivo de texto existe
if not os.path.isfile(output_file):
    print(f"O arquivo {output_file} não existe ou está vazio.")
    exit(1)

# Inicializa a variável de lista para armazenar os players
players = []

with open(output_file, 'r') as file:
    players = file.read().strip().split('\n')


contador_path = os.path.expanduser("~/.config/i3/play/contador.txt")
contador = int(open(contador_path).read().strip())

if contador < (len(players) - 1):
    contador += 1
else:
    contador = 0

with open(contador_path, 'w') as file:
    file.write(f'{contador}')

# Obtém o elemento correspondente ao índice do contador
player = players[contador]

# Imprime o player correspondente ao contador
# print(f"Player no índice {contador}: {player}")

player_path = os.path.expanduser('~/.config/i3/play/player.txt')

with open(player_path, 'w') as file:
    file.write(f'{player}')
