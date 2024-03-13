\newenvironment*{citacao}
{
   \list{}
   \small
   \addtolength{\leftskip}{4cm}
   \item[]
   \begin{SingleSpace}
   \end{SingleSpace}
}

\newcommand{\inserecatalog}{
\thispagestyle{empty}

\ifthenelse{\boolean{@twoside}}
{}
{\addtocounter{page}{-1}}

{
\vspace*{15cm}
\begin{center}
\begin{minipage}[c]{13cm}
\begin{center}

\end{center}
\end{minipage}

\fbox{\hspace*{0.3cm} 
\begin{minipage}[c]{12.5cm} \SingleSpacing \small
  \imprimirautorcite. \par
  \hspace*{0.45cm} \imprimirtitulo~/ \imprimirautor. - Muriaé, \imprimirano. \\ \par
  \hspace*{0.5cm} VIII, \pageref{LastPage} p. 29,7cm \\
  [12pt]
  \hspace*{0.45cm} \imprimirorientadorRotulo~\imprimirorientador\\ \par
    {\IfNonempty{\inserecoorientador}{%
       {\hspace*{0.45cm} \inserecoorientadorOU ~\inserecoorientador \par }%
    }
   }
  \hspace*{0.45cm} \imprimirtipotrabalho~-~\imprimirinstituicao.~\imprimirinstituto,~\imprimirano. \\[12pt]
  \hspace*{0.5cm} 
  \vspace*{12pt}
  \hspace*{0.3cm}
\end{minipage} \hspace*{0.3cm}}
\end{center}}
}


\usepackage{changepage}
\usepackage{etoolbox}
\usepackage{atbegshi}

% Novo contador para rastrear o número total de páginas
\newcounter{totalpages}
\setcounter{totalpages}{0} % Inicia a contagem em 0

% Novo comando para iniciar a numeração de página a partir de um capítulo específico
\newcommand{\startPageNumbering}{%
  \cleardoublepage
  \ifnum\value{totalpages}=0
    \addtocounter{totalpages}{\value{page}} % Soma o número total de páginas já impressas
  \fi
  \begin{adjustwidth}{-1in}{-1in}
    \setcounter{page}{\value{totalpages}} % Define o número da página inicial do capítulo
    \pagestyle{plain} % ou \pagestyle{headings} conforme desejado
  \end{adjustwidth}
}

% Modifica o comando \chapter para incluir o ajuste automático da numeração da página
\appto\chapter{\startPageNumbering}

% Captura o número total de páginas antes do primeiro capítulo
\AtBeginShipout{\ifnum\value{chapter}=0\setcounter{totalpages}{\number\value{page}}\fi}
