%% https://github.com/abntex/abntex2/wiki/ComoCustomizar
%%



%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para o IFSP
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Ivan F. Martinez, ivanfm
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifsp-spo}[2016/03/01 v1.0 Modelo do IFSP Campus SPO baseado em abnTeX2]

%
% Repassa todos os parâmetros a classe ifsp, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{ifsp}%
}
\ProcessOptions\relax
\LoadClass{ifsp}
\usepackage{graphicx}
% ---
% Pacotes básicos 
% ---
\usepackage[T1]{fontenc}        % Selecao de codigos de fonte.
\usepackage[utf8]{inputenc}
\usepackage{lastpage}           % Usado pela Ficha catalográfica
\usepackage{indentfirst}        % Indenta o primeiro parágrafo de cada seção.
\usepackage{color}              % Controle das cores
\usepackage{microtype}          % para melhorias de justificação
\usepackage{makeidx}			% para o indice

% ---
% Pacotes de citações
% ---
\usepackage[brazilian,hyperpageref]{backref}     % Paginas com as citações na bibl

% Glossario...
% Existe alguma incompatibilidade entre o glossario e o abntex2cite, não funcionaram juntos no overleaf
%\usepackage[toc,xindy]{glossaries}
%\makeglossaries
%\input{defs-glossario}


\usepackage[alf]{abntex2cite}   % Citações padrão ABNT

% --- 
% CONFIGURAÇÕES DE PACOTES
% --- 

% ---
% Configurações do pacote backref
% Usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define os textos da citação
\renewcommand*{\backrefalt}[4]{
    \ifcase #1 %
        Nenhuma citação no texto.%
    \or
        Citado na página #2.%
    \else
        Citado #1 vezes nas páginas #2.%
    \fi}%
% ---



\renewcommand{\imprimirifsp}{Instituto Federal de Educação, Ciência e Tecnologia\newline
    Câmpus São Paulo - IFSP}
\renewcommand*{\ifspprefixo}{ifsp-sao}



% Comandos de dados - curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Comandos de dados - departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - disciplina
\providecommand{\imprimirdisciplina}{}
\newcommand{\disciplina}[1]{\renewcommand{\imprimirdisciplina}{#1}}

