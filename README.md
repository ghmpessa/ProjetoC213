<img src="https://0901.static.prezi.com/preview/v2/x4yqiy74xyhjgv5ndmjou63knd6jc3sachvcdoaizecfr3dnitcq_3_0.png">

# Planta de nível - Controlador PID

> Linguagem: GNU Octave

> Vizualizar em tempo real: <a href="https://zoruka.github.io/ProjetoC213_Interface/" target="_blank">Clique aqui</a>

---

## Organização do diretório

- <a href="https://github.com/ghmpessa/ProjetoC213/blob/main/Scripts/amostras_equipe4.mat" target="_blank">Amostras</a>
- <a href="https://github.com/ghmpessa/ProjetoC213/blob/main/Scripts/script_minimos_quadrados.m" target="_blank">Método Estimador de Mínimos Quadrados</a>
- <a href="https://github.com/ghmpessa/ProjetoC213/blob/main/Scripts/RespostaReal.m" target="_blank">Resposta Real</a>
- <a href="https://github.com/ghmpessa/ProjetoC213/blob/main/Scripts/MalhaAberta.m" target="_blank">Operação em malha aberta</a>
- <a href="https://github.com/ghmpessa/ProjetoC213/blob/main/Scripts/MalhaFechada.m" target="_blank">Operação em malha fechada</a>
- <a href="https://github.com/ghmpessa/ProjetoC213/blob/main/Scripts/RF_novo.m" target="_blank">Operação para encontrar Ganho Integrativo (KI) e Proporcional (KP)</a>
- <a href="https://github.com/ghmpessa/ProjetoC213/blob/main/Scripts/MalhaFechadaControlador.m" target="_blank">Operação em malha fechada com controlador</a>

---

## Como utilizar - passo a passo

### Requisitos

 - Ter <a href="https://www.gnu.org/software/octave/" target="_blank">GNU Octave</a> instalado na máquina

### Passo 1

  - 👯 Clonar para sua máquina atual

### Passo 2

- Executar amostras_equipe4.mat para obter a saída da resposta real

### Passo 3

- Execute o script de mínimos quadrados, para a obter a função de transferência

<img src="https://github.com/ghmpessa/ProjetoC213/blob/main/Img/FuncaoDeTransferencia.PNG">

### Passo 4

- Execute o script RespostaReal.m  para obter o gráfico com a Resposta Real VS Resposta Encontrada

<img src="https://github.com/ghmpessa/ProjetoC213/blob/main/Img/RespostaReal.gif">

### Passo 5

- Execute o script MalhaAberta.m para obter a resposta para uma operação com Malha Aberta

<img src="https://github.com/ghmpessa/ProjetoC213/blob/main/Img/MalhaAberta.png">

### Passo 6

- Execute o script MalhaFechada.m para obter a resposta para uma operação com Malha Fechada

<img src="https://github.com/ghmpessa/ProjetoC213/blob/main/Img/MalhaFechada.png">

### Passo 7

- Execute o script RF_novo.m para obter os valores do Ganho Integrativo (KI) e do Ganho Proporcional (KP)

### Passo 8

- Execute o script MalhaFechadaControlador.m para obter a resposta para uma operação com Malha Fechada com Controlador PID

<img src="https://github.com/ghmpessa/ProjetoC213/blob/main/Img/MalhaFechadaControladorCorreto.png">

✔️ Se todas as respostas acima apareceram, deu tudo certo!
<br>
<br>
<img src="https://media.giphy.com/media/8zYunr3Hg8XPq/giphy.gif">
<br>
<br>
❌ Se algum resultado difere dos acima, algo de errado não está certo
<br>
<br>
<img src="https://media.giphy.com/media/XeSUAqI8uGTxL145ut/giphy.gif">

---

## Contribuição

### Passo 1

- **Opção 1**
    - 🍴 Forkar esse repositório!

- **Opção 2**
    - 👯 Clonar para sua maquina atual.

### Passo 2

- **Codar!** 👨‍💻👩‍💻

### Passo 3

- 🔃 Crie um novo pull request.

---

## Autores


| **Gustavo Henrique** | **Marcelo Amorim** | **Felipe Zoruka** |
| :---: |:---:| :---:|
| [![FVCproductions](https://avatars1.githubusercontent.com/u/66761894?s=200&v=4)](https://github.com/ghmpessa) | [![FVCproductions](https://avatars1.githubusercontent.com/u/63866348?&v=4&s=200)](https://github.com/marceloams) | [![FVCproductions](https://avatars1.githubusercontent.com/u/30053103?s=200&v=4)](https://github.com/zoruka)  |

---

## Licença

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2020 © <a href="https://github.com/ghmpessa/ProjetoC213" target="_blank">TrabalhoC213Productions</a>.
