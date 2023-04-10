[![GitHub license](https://img.shields.io/badge/license-CC0-blue.svg)](https://raw.githubusercontent.com/emersonmello/modelos-latex/master/LICENSE)
[![Compilação do PDF](https://github.com/emersonmello/monografia-latex-ifsc/actions/workflows/gerar-pdf.yml/badge.svg)](https://github.com/emersonmello/monografia-latex-ifsc/actions/workflows/gerar-pdf.yml)

# Modelo de monografia em LaTeX para o Instituto Federal de Santa Catarina

Adaptação do documento [abnTeX2: Modelo de Trabalho Acadêmico](https://www.ctan.org/pkg/abntex2) para ficar de acordo com o "Template para elaboração de trabalho acadêmico" fornecido pela [Biblioteca do IFSC](https://www.ifsc.edu.br/documentos-uteis).

[Aqui tem um exemplo do PDF gerado](https://github.com/emersonmello/monografia-latex-ifsc/releases/latest) a partir deste modelo.

## Compilando o projeto localmente e não no Overleaf

Este projeto faz uso do pacote glossaries. Se for usar uma instalação local do LaTeX para compilar, e não no [Overleaf](https://www.overleaf.com), então é necessário que tenha o arquivo [`.latexmkrc`](.latexmkrc) dentro diretório deste projeto e use o comando abaixo:
```bash
latexmk -outdir=out -pdf monografia.tex
```
A extensão [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) do Visual Studio Code usa por padrão o latexmk para compilar.
