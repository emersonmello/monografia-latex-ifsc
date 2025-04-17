[![GitHub license](https://img.shields.io/badge/license-CC0-blue.svg)](https://raw.githubusercontent.com/emersonmello/modelos-latex/master/LICENSE)
[![Compilação do PDF](https://github.com/emersonmello/monografia-latex-ifsc/actions/workflows/gerar-pdf.yml/badge.svg)](https://github.com/emersonmello/monografia-latex-ifsc/actions/workflows/gerar-pdf.yml)

# Modelo de monografia em LaTeX para o Instituto Federal de Santa Catarina

Adaptação do documento [abnTeX2: Modelo de Trabalho Acadêmico](https://www.ctan.org/pkg/abntex2) para ficar de acordo com o [Manual de normalização de trabalhos acadêmicos](https://www.ifsc.edu.br/documentos-uteis) do Sistema de Bibliotecas integradas do IFSC (SiBI/IFSC), revisão de 08 de abril de 2025.


- Baixe aqui o [PDF gerado](https://github.com/emersonmello/monografia-latex-ifsc/releases/latest) a partir do código fonte disponível neste repositório.

## Como usar

### No Overleaf

1. Acesse o [Overleaf](https://www.overleaf.com).
2. Crie um novo projeto e selecione a opção "Upload Project".
3. Faça download do arquivo `.zip` deste repositório e extraia o conteúdo em um diretório local.
4. Selecione todos os arquivos extraídos e faça o upload deles para o Overleaf
   1. Atente-se para subir também o arquivo oculto `.latexmkrc`, que é necessário para compilar o projeto corretamente.
5. Abra o arquivo `monografia.tex` e clique no botão "Recompile" para gerar o PDF.

> [!IMPORTANT]  
> O Overleaf limita em 20 segundos o tempo de compilação dos projetos de contas gratuitas. Talvez este tempo não seja suficiente para compilar este projeto com o uso do glossário. Se o Overleaf indicar que o tempo de compilação foi excedido, tente remover o glossário e veja se consegue. Se não resolver, a sugestão é compilar localmente, conforme passos indicados abaixo.

### Localmente

1. Instale o [LaTeX](https://www.latex-project.org/get/) na sua máquina.
   - Para Windows, uma boa opção é o [MiKTeX](https://miktex.org/download).
   - Para Linux, você pode usar o comando `sudo apt install texlive-full`
   - Para Mac, você pode usar o [MacTeX](https://www.tug.org/mactex/).
2. Instale o `latexmk` para compilar o projeto
   - Geralmente ele já vem instalado com o LaTeX
3. Instale um editor de texto com suporte a LaTeX, como o [Visual Studio Code](https://code.visualstudio.com/) ou o [TeXShop](http://pages.uoregon.edu/koch/texshop/).
   - Se você usar o Visual Studio Code, instale a extensão [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).
4. Faça download do arquivo `.zip` deste repositório e extraia o conteúdo em um diretório local.
5. Abra o diretório extraído no seu editor de texto, localize o arquivo `monografia.tex` e clique no botão de compilar para gerar o PDF.
   
Você também pode compilar diretamente pelo terminal usando o `latexmk`:
```bash
latexmk -outdir=out -pdf monografia.tex
```