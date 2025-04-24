% ifscthesis.cls
% ------------------------------------------------------------%
% Personalizações do abnTeX2 (https://github.com/abntex/abntex2) 
% para o Instituto Federal de Santa Catarina (IFSC)
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% ------------------------------------------------------------%
% 2015 - 2025 Emerson Ribeiro de Mello - mello@ifsc.edu.br
% ------------------------------------------------------------%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifscthesis}[2025/04/24 v2.1 IFSC thesis] 

% This class is based on class "abntex2"
\LoadClassWithOptions{abntex2}


% ------------------------------------------------------------
% Pacotes básicos
% ------------------------------------------------------------

\RequirePackage[style=abnt,noslsn,justify]{biblatex}
\RequirePackage{csquotes} 
\RequirePackage{lmodern}		  	% Usa a fonte Latin Modern			
\RequirePackage[T1]{fontenc}		% Selecao de codigos de fonte.
\RequirePackage{lastpage}			  % Usado pela Ficha catalográfica
\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{color,xcolor}	  % Controle das cores
\RequirePackage{graphicx}			  % Inclusão de gráficos

\PassOptionsToPackage{hyphens}{url} % Permite quebra de URL
\urlstyle{sf}
\RequirePackage{breakcites}     % para quebrar citações que estouram a margem
\RequirePackage{amsmath,tikz,pgf}
\RequirePackage{caption,subcaption}
\RequirePackage{array,booktabs,bookmark,multirow}
\RequirePackage{ragged2e}
\RequirePackage{upquote,listings}




% ------------------------------------------------------------
% Configurações de pacotes
% ------------------------------------------------------------
% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.3cm}
% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0.2cm}  % tente também \onelineskip


% Configurações do pacote hyperref
\makeatletter
\hypersetup{
pdftitle={\@title}, 
pdfauthor={\@author},
pdfsubject={\imprimirpreambulo},
colorlinks=true,       		% false: boxed links; true: colored links
linkcolor=black,          	% color of internal links
citecolor=black,        		% color of links to bibliography
filecolor=black,      		% color of file links
urlcolor=black,
bookmarksdepth=4
}
\makeatother

% Posiciona figuras e tabelas no topo da página quando adicionadas sozinhas
% em um página em branco. Ver https://github.com/abntex/abntex2/issues/170
\makeatletter
\setlength{\@fptop}{5pt} % Set distance from top of page to first float
\makeatother

% pacote: caption. A legenda de subfigures deve ficar abaixo da figura e a legenda da figura deve ficar no topo
% \captionsetup[figure]{position=bottom}


% ------------------------------------------------------------


% ------------------------------------------------------------
% Comandos e ambientes personalizados
% ------------------------------------------------------------

% Para atender norma do IFSC para títulos das seções no sumário e nas páginas
% Seção primária: CAIXA ALTA E NEGRITO;
\renewcommand{\ABNTEXchapterfont}{\bfseries\sffamily}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

% Seção secundária: CAIXA ALTA;
\renewcommand{\ABNTEXsectionfont}{\normalfont\sffamily}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\cftsectionfont}{\normalfont\sffamily\MakeUppercase}

% Seção terciária: Negrito;
\renewcommand{\ABNTEXsubsectionfont}{\bfseries\sffamily}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

% Seção quaternária: Itálico;
\renewcommand{\ABNTEXsubsubsectionfont}{\itshape\sffamily}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}
\renewcommand{\cftsubsubsectionfont}{\normalsize\normalfont\itshape\sffamily}

% Seção quinária: Normal.
\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont\sffamily}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}
\renewcommand{\cftparagraphfont}{\normalsize\normalfont\sffamily}  




\makepagestyle{cabecalholimpo}
\makeevenhead{cabecalholimpo}{\thepage}{}{} % páginas pares
\makeoddhead{cabecalholimpo}{}{}{\thepage} % páginas ímpares
% \makeheadrule{cabecalholimpo}{\textwidth}{\normalrulethickness} % linha

%-----------------------------------------------%
% Possibilita criação de Quadros e Lista de quadros.
% Ver https://github.com/abntex/abntex2/issues/176
\newcommand{\quadroname}{Quadro}
\newcommand{\listofquadrosname}{Lista de quadros}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
% configurações para atender às regras da ABNT
\setfloatadjustment{quadro}{\centering}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space} 
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}
% Ver https://github.com/abntex/abntex2/issues/176
\setfloatlocations{quadro}{hbtp}
%-----------------------------------------------% 


%-----------------------------------------------%
%  Comando para ser usado abaixo de figuras,
%  tabelas e quadros para indicar que o elemento
%  é de autoria do próprio autor do documento.
\newcommand{\fonteproprioautor}{
\vspace{-1ex}
\small
\center{Fonte: Elaborada pelo autor.}}
%-----------------------------------------------%

%-----------------------------------------------%
% Novos tipos de colunas em tabelas que permitem
% definir a largura da coluna e o alinhamento do texto.
% O alinhamento é feito com o pacote ragged2e
%-----------------------------------------------%
\newcolumntype{R}[1]{>{\RaggedLeft\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{L}[1]{>{\RaggedRight\arraybackslash}p{#1}}


%-----------------------------------------------%
% Personalização do modelo abnTeX2 para ficar de
% acordo com o modelo do IFSC 2025-04-16
%-----------------------------------------------%
\makeatletter
\renewcommand{\imprimircapa}{%
\begin{capa}%
    \center
    \ABNTEXchapterfont\normalfont\large\imprimirinstituicao

    \vspace*{2cm}

    {\ABNTEXchapterfont\normalfont\large\MakeUppercase{\imprimirautor}}

    \vspace*{2cm}
    \begin{center}
    \ABNTEXchapterfont\bfseries\large\MakeUppercase{\imprimirtitulo}
    \end{center}
    \vfill
    
    \large\MakeUppercase{\imprimirlocal}

    \large\imprimirdata
    
    \vspace*{1cm}
  \end{capa}
}
\makeatother

%-----------------------------------------------%
% folha de rosto 
%-----------------------------------------------%
\makeatletter

\renewcommand{\folhaderostocontent}{

\begin{center}
    {\ABNTEXchapterfont\normalfont\large\imprimirautor}

    \vspace*{2cm}

    \ABNTEXchapterfont\normalfont\large\imprimirtitulo


    \vspace*{3cm}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  {\normalsize\imprimirpreambulo}

\vspace*{.3cm}

{\normalsize\imprimirorientadorRotulo~\imprimirorientador}\par

\vspace*{.3cm}

\abntex@ifnotempty{\imprimircoorientador}{%
{\normalsize\imprimircoorientadorRotulo~\imprimircoorientador}%
}%
\end{minipage}%
}%

\vspace*{\fill}

\imprimirlocal

\par

\imprimirdata
\end{center}
}
\makeatother
%-----------------------------------------------%


%-----------------------------------------------%
%  Glossário
%-----------------------------------------------%
\makeatletter
% Para resolver um conflito entre abntex e glossaries-extra
% https://groups.google.com/g/abntex2/c/Hb0TnI-kD8Q/m/8Syvf2_yGYcJ
\let\su@ExpandTwoArgs\relax
\let\IfSubStringInString\relax
\let\su@IfSubStringInString\relax 
\makeatother

% Para versões de 2025 será necessário descomentar a linha abaixo
% para evitar a mensagem de aviso do pacote datatool-base
% \RequirePackage[lang-warn=false]{datatool-base}

\RequirePackage[automake,nomain,acronym,symbols,%
 nostyles,% only need list style so don't load others
 stylemods={list},% load glossary-list.sty
 style=list,nogroupskip,postpunc=dot,toc=false]{glossaries-extra}
 \setabbreviationstyle[acronym]{long-short}
 \setabbreviationstyle{long-short}

% Para deixar em maiúscula a primeira letra na lista de siglas e glossário
\renewcommand{\glsnamefont}[1]{\makefirstuc{#1}}

% https://tex.stackexchange.com/questions/31300/using-the-glossaries-package-for-english-acronyms-in-german-documents
% \glscurrentfieldvalue only works with glossaries v4.23 (and above)
\renewcommand{\glsxtrpostdescacronym}{%
 \ifglshasfield{\glsxtruserfield}{\glscurrententrylabel}%
 { (\glscurrentfieldvalue)}%
 {}%
}

%-----------------------------------------------%


%-----------------------------------------------%
% Corrigindo bug na classe abnTeX que gera warning 
% Token not allowed
% https://github.com/abntex/abntex2/blob/f0a4d3c8589f0f2e7c087880f0816debda036eb4/tex/latex/abntex2/abntex2.cls#L892
% 
% Quando a issue abaixo for corrigida, então este 
% bloco poderá ser excluído
% https://github.com/abntex/abntex2/issues/133#issuecomment-387957640
%-----------------------------------------------%
\renewcommand{\PRIVATEapendiceconfig}[2]{%
 \setboolean{abntex@apendiceousecao}{true}%
 \renewcommand{\appendixname}{#1}
 \ifthenelse{\boolean{ABNTEXsumario-abnt-6027-2012}}{
   \renewcommand{\appendixtocname}{\texorpdfstring{\MakeTextUppercase{#2}}{#2}}
  }{%
  \renewcommand{\appendixtocname}{#2}} 
 \renewcommand{\appendixpagename}{#2}
 \switchchapname{#1}% Corrected from \switchapname -> \switchchapname
 \renewcommand*{\cftappendixname}{#1 \space}
}
%-----------------------------------------------%



% -------------------------------------------------%
% Configurações para o listing
% -------------------------------------------------%
\renewcommand{\lstlistingname}{Código}
\renewcommand{\lstlistlistingname}{Lista de códigos}
% Configura a ``Lista de Códigos'' conforme as regras da ABNT (para abnTeX2)
\begingroup\makeatletter
\let\newcounter\@gobble\let\setcounter\@gobbletwo
\globaldefs\@ne \let\c@loldepth\@ne
\newlistof{listings}{lol}{\lstlistlistingname}
\newlistentry{lstlisting}{lol}{0}
\endgroup

\renewcommand{\cftlstlistingaftersnum}{\hfill--\hfill}

\let\oldlstlistoflistings\lstlistoflistings

\renewcommand{\lstlistoflistings}{%
\begingroup%
\let\oldnumberline\numberline%
\renewcommand{\numberline}{\lstlistingname\space\oldnumberline}%
\oldlstlistoflistings%
\endgroup}
%-----------------------------------------------%

\definecolor{hellgelb}{rgb}{1,1,0.9}
\definecolor{colKeys}{rgb}{0,0,0}
\definecolor{colIdentifier}{rgb}{0,0,0.9}
\definecolor{colComments}{rgb}{.4,.4,.4}
\definecolor{colString}{rgb}{0,0,0.6}
\definecolor{deepblue}{rgb}{0,0,0.8}
\definecolor{deepred}{rgb}{0.6,0,0}
\definecolor{deepgreen}{rgb}{0,0.5,0}
\definecolor{colBack}{rgb}{1,1,0.9}
\definecolor{colKeys}{rgb}{108,48,130}%{0,0,0}
\definecolor{colIdentifier}{rgb}{0,0,0.9}
\definecolor{colComments}{rgb}{0,0.6,0}%{.4,.4,.4}
\definecolor{colString}{rgb}{0.6,0,0}
\definecolor{javared}{rgb}{0.6,0,0} % for strings
\definecolor{javagreen}{rgb}{0.25,0.5,0.35} % comments
\definecolor{javapurple}{rgb}{0.5,0,0.35} % keywords
\definecolor{javadocblue}{rgb}{0.25,0.35,0.75} % javadoc
% XML color
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{gray}{rgb}{0.4,0.4,0.4}
\definecolor{darkblue}{rgb}{0.0,0.0,0.6}
\definecolor{lightblue}{rgb}{0.0,0.0,0.9}
\definecolor{cyan}{rgb}{0.0,0.6,0.6}
\definecolor{darkred}{rgb}{0.6,0.0,0.0}
% Criando definição para linguagem Groovy
\definecolor{groovyblue}{HTML}{0000A0}
\definecolor{groovygreen}{HTML}{008000}
\definecolor{darkgray}{rgb}{.4,.4,.4}
% json
\definecolor{eclipseStrings}{RGB}{42,0.0,255}
\definecolor{eclipseKeywords}{RGB}{127,0,85}
\colorlet{numb}{magenta!60!black}

\lstset{ %
  aboveskip=\bigskipamount,
  backgroundcolor=\color{colBack}, 
  basicstyle=\ttfamily\footnotesize,
  keywordstyle=\color{deepblue},
  stringstyle=\color{javared},
  commentstyle=\color{javagreen},
  morecomment=[s][\color{javadocblue}]{/**}{*/},
  breakatwhitespace=false,
  breaklines=true,        
  captionpos=t,           
  columns=flexible,
  deletekeywords={...},  
  escapechar={@*},       
  extendedchars=true,    
  linewidth=0.98\linewidth,
  tab=$\to$,
  float=tbph,
  xleftmargin=10pt,
  frame=single,	         
  keepspaces=true,       
  numbers=left,    
  numbersep=5pt,   
  numberstyle=\tiny,
  rulecolor=\color{black}, 
  showspaces=false,        
  showstringspaces=false,  
  showtabs=false,          
  tabsize=2,
  title=\lstname
}

\lstdefinelanguage{Groovy}[]{Java}{
  keywordstyle=\color{groovyblue}\bfseries,
  stringstyle=\color{groovygreen}\ttfamily,
  keywords=[3]{each, findAll, groupBy, collect, inject, eachWithIndex},
  morekeywords={def, as, in, use},
  moredelim=[is][\textcolor{darkgray}]{\%\%}{\%\%},
  moredelim=[il][\textcolor{darkgray}]{§§}
}
\lstdefinelanguage{XML}{
  morestring=[s][\color{mauve}]{"}{"},
  morestring=[s][\color{black}]{>}{<},
  morecomment=[s]{<?}{?>},
  morecomment=[s][\color{dkgreen}]{<!--}{-->},
  stringstyle=\color{black},
  identifierstyle=\color{lightblue},
  keywordstyle=\color{red},
  % list your attributes here
  morekeywords={xmlns,xsi,noNamespaceSchemaLocation,type,id,x,y,source,target,version,tool,transRef,roleRef,objective,eventually}
}
\lstdefinelanguage{json}{
    commentstyle=\color{eclipseStrings}, % style of comment
    stringstyle=\color{eclipseKeywords}, % style of strings
    string=[s]{"}{"},
    comment=[l]{:\ "},
    morecomment=[l]{:"},
    literate=
        *{0}{{{\color{numb}0}}}{1}
         {1}{{{\color{numb}1}}}{1}
         {2}{{{\color{numb}2}}}{1}
         {3}{{{\color{numb}3}}}{1}
         {4}{{{\color{numb}4}}}{1}
         {5}{{{\color{numb}5}}}{1}
         {6}{{{\color{numb}6}}}{1}
         {7}{{{\color{numb}7}}}{1}
         {8}{{{\color{numb}8}}}{1}
         {9}{{{\color{numb}9}}}{1}
}


\lstdefinelanguage{docker}{
  keywords={FROM, RUN, COPY, ADD, ENTRYPOINT, CMD,  ENV, ARG, WORKDIR, EXPOSE, LABEL, USER, VOLUME, STOPSIGNAL, ONBUILD, MAINTAINER},
  keywordstyle=\color{blue}\bfseries,
  identifierstyle=\color{black},
  sensitive=false,
  comment=[l]{\#},
  % stringstyle=\color{red}\ttfamily,
  morestring=[b]',
  morestring=[b]"
}

\lstdefinelanguage{docker-compose}{
  keywords={image, environment, ports, container_name, ports, volumes, links},
  keywordstyle=\color{blue}\bfseries,
  identifierstyle=\color{black},
  sensitive=false,
  comment=[l]{\#},
  % stringstyle=\color{red}\ttfamily,
  morestring=[b]',
  morestring=[b]"
}
\lstdefinelanguage{docker-compose-2}{
  keywords={version, volumes, services},
  keywordstyle=\color{blue}\bfseries,
  keywords=[2]{image, environment, ports, container_name, ports, links, build},
  keywordstyle=[2]\color{olive}\bfseries,
  identifierstyle=\color{black},
  sensitive=false,
  comment=[l]{\#},
  commentstyle=\color{purple}\ttfamily,
  stringstyle=\color{red}\ttfamily,
  morestring=[b]',
  morestring=[b]"
}

% Permitindo caracteres acentuados dentro do ambiente lstlisting
\lstset{%
        inputencoding=utf8,
        extendedchars=true,
        literate=%
        {é}{{\'{e}}}1
        {è}{{\`{e}}}1
        {ê}{{\^{e}}}1
        {ë}{{\¨{e}}}1
        {É}{{\'{E}}}1
        {Ê}{{\^{E}}}1
        {û}{{\^{u}}}1
        {ù}{{\`{u}}}1
        {â}{{\^{a}}}1
        {à}{{\`{a}}}1
        {á}{{\'{a}}}1
        {ã}{{\~{a}}}1
        {Á}{{\'{A}}}1
        {Â}{{\^{A}}}1
        {Ã}{{\~{A}}}1
        {ç}{{\c{c}}}1
        {Ç}{{\c{C}}}1
        {õ}{{\~{o}}}1
        {ó}{{\'{o}}}1
        {ú}{{\'{u}}}1
        {Ú}{{\'{U}}}1
        {ô}{{\^{o}}}1
        {Õ}{{\~{O}}}1
        {Ó}{{\'{O}}}1
        {Ô}{{\^{O}}}1
        {î}{{\^{i}}}1
        {Î}{{\^{I}}}1
        {í}{{\'{i}}}1
        {Í}{{\~{Í}}}1
}