\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifsp}[2016/03/01 v1.0 Modelo do IFSP baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}
\usepackage[utf8]{inputenc}


% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    
    \begin{figure}[ht!]
    \centering
	\includegraphics{\ifspprefixo/logo-02.jpg}
	\end{figure}
    
    \ABNTEXchapterfont\Large\imprimirifsp

    \vspace*{1cm}

    {\ABNTEXchapterfont\large\imprimirautor}

    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    \vfill

    \large\imprimirlocal

    \large\imprimirdata

    \vspace*{1cm}
  \end{capa}
}


\newcommand{\imprimircapacompleta}{%
  \begin{capa}%
    \center
    
    \begin{figure}[ht!]
    \centering
	\includegraphics{\ifspprefixo/logo-02.jpg}
	\end{figure}
    
    \ABNTEXchapterfont\Large\imprimirifsp

    \vspace*{1cm}

    {\ABNTEXchapterfont\large\imprimirautor}

    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    \vfill

	{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

    \large\imprimirlocal

    \large\imprimirdata

    \vspace*{1cm}
  \end{capa}
}



% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\Large \imprimirifsp}

    \vspace*{1cm}

{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \end{minipage}%
  \vspace*{\fill}
}%

{\large\imprimirorientadorRotulo~\imprimirorientador\par}

\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\imprimirlocal}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}

\newcommand{\imprimirifsp}{Instituto Federal de Educação, Ciência E Tecnologia - IFSP}
\newcommand{\ifspprefixo}{ifsp/ifsp}


%  ---- https://github.com/abntex/abntex2/wiki/HowToCriarNovoAmbienteListing
% Novo list of (listings) para QUADROS

\newcommand{\quadroname}{Quadro}
\newcommand{\listofquadrosname}{Lista de quadros}

\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}

% configurações para atender às regras da ABNT
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space} 
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}
%-------------------------------------------------------



