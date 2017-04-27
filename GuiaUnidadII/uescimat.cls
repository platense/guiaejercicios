% uescimat.cls 
%
% Autor: MSc. Humberto Sermeno
% Creacion: Noviembre 5, 2006

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uescimat}[2006/11/05 Documentos CIMAT, UES]

\typeout{*}
\typeout{* Formatos Estandar para Documentos}
\typeout{* por MSc. Humberto Sermeno - Noviembre 2006}
\typeout{* Facultad de Ciencias Naturales y Matematica}
\typeout{*}

\newcommand{\es@evaluacion}{0}
\newcommand{\usa@grupos}{0}

\DeclareOption{evaluacion}{\renewcommand{\es@evaluacion}{1}}
\DeclareOption{grupos}{\renewcommand{\usa@grupos}{1}}
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage[spanish]{babel}
\decimalpoint
\RequirePackage{fancyhdr}
\RequirePackage{color}
\RequirePackage{multirow}
\RequirePackage{enumerate}
\RequirePackage{paralist}
\RequirePackage{latexsym,amsmath,amssymb,amsthm}
\RequirePackage[paper=letterpaper,right=2cm,left=2cm,top=1.3cm,bottom=2.5cm]{geometry}
\RequirePackage[pdftex]{graphicx}


\newcommand{\@autor}{*}
\newcommand{\@titulo}{*}
\newcommand{\@fecha}{*}
\newcommand{\@materia}{*}
\newcommand{\@ciclo}{*}
\newcommand{\ano@academico}{*}
\newcommand{\fecha@entrega}{*}
\newcommand{\@grupo}{*}

\newcommand{\titulo}[1]{\renewcommand{\@titulo}{#1}}
\renewcommand{\title}[1]{\titulo{#1}}

\newcommand{\autor}[1]{\renewcommand{\@autor}{#1}}
\renewcommand{\author}[1]{\autor{#1}}

\newcommand{\fecha}[1]{\renewcommand{\@fecha}{#1}}
\renewcommand{\date}[1]{\fecha{#1}}

\newcommand{\materia}[1]{\renewcommand{\@materia}{#1}}
\newcommand{\curso}[1]{\materia{#1}}
\newcommand{\ciclo}[1]{\renewcommand{\@ciclo}{#1}}
\newcommand{\anoacademico}[1]{\renewcommand{\ano@academico}{#1}}
\newcommand{\entrega}[1]{\renewcommand{\fecha@entrega}{#1}}
\newcommand{\grupo}[1]{\renewcommand{\@grupo}{#1}}

\renewcommand{\maketitle}{
\noindent\begin{minipage}[b]{.5\textwidth}
\includegraphics[height=2cm]{logo.png}
\end{minipage}%
\begin{minipage}[b][2cm][s]{.5\textwidth}
{ \small
	\begin{flushright}
		\MakeUppercase{\@materia}
		\if*\@autor\else
			\\\textsc{\@autor}
		\fi
		\if*\@fecha\else
			\\\textsc{\@fecha}
		\fi
		\if*\@ciclo\else
			\\\textsc{Ciclo \@ciclo\if*\ano@academico\else -\ano@academico\fi}
		\fi
		\ifnum\usa@grupos=1
			\\\textsc{Grupo \if*\@grupo\makebox[1cm]{\hrulefill}\else\@grupo\fi}
		\fi
	\end{flushright}
	}
\end{minipage}\\
\begin{minipage}[t]{\textwidth}
\centerline{\bfseries\normalsize\@titulo}
\if*\fecha@entrega \else
	\centerline{Fecha de entrega: \fecha@entrega}
\fi
\end{minipage}\vspace{.5cm}%


\ifnum\es@evaluacion=1%
	\noindent\mbox{Nombre:}\hspace{.5mm}\hrulefill	\hspace{3mm}\mbox{Carnet, Carrera:}\hspace{.5mm}\makebox[3.5cm]{\hrulefill}\fi
\vspace{0.3cm}
}

\newcounter{contador@problemas}
\setcounter{contador@problemas}{0}

\newenvironment{indicaciones}{\noindent\textsc{Indicaciones: }}{\vspace{2mm}}
\newenvironment{problema}[1][*]{%
	\addtocounter{contador@problemas}{1}
	\noindent\textsc{\bfseries\small{Problema \thecontador@problemas}}
	\normalfont{\if*#1\else\emph{(#1)}\fi\\}}%
	%{\vspace{5mm}}

\newcommand{\y}{\wedge}
\renewcommand{\o}{\vee}
\newcommand{\implica}{\rightarrow}
\newcommand{\eqlogica}{\Leftrightarrow}
\newcommand{\imlogica}{\Rightarrow}
\newcommand{\sisolosi}{\leftrightarrow}
\newcommand{\conj}[1]{\mathbf{\MakeUppercase{#1}}}
\newcommand{\ele}[1]{\mathbf{\MakeLowercase{#1}}}
\newcommand{\mconj}[1]{$\mathbf{\MakeUppercase{#1}}$}
\newcommand{\mele}[1]{$\mathbf{\MakeLowercase{#1}}$}
\newcommand{\mconjp}[2]{$\conj{#1}(\conj{#2})$}
\newcommand{\conjp}[2]{\conj{#1}(\conj{#2})}
\newcommand{\cconj}[1]{\conj{#1}^{c}}
\newcommand{\mcconj}[1]{\mconj{#1}^{c}}
\newcommand{\conjesp}[1]{\mathds{#1}}
\newcommand{\mnaturales}{$\conjesp{N}$ }
\newcommand{\naturales}{\conjesp{N}}
\newcommand{\mentpos}{$\conjesp{P}$ }
\newcommand{\entpos}{\conjesp{P}}
\newcommand{\menteros}{$\conjesp{Z}$ }
\newcommand{\enteros}{\conjesp{Z}}
\newcommand{\mracionales}{$\conjesp{Q}$ }
\newcommand{\racionales}{\conjesp{Q}}
\newcommand{\mnracionales}{$\conjesp{Q'}$ }
\newcommand{\nracionales}{\conjesp{Q'}}
\newcommand{\mreales}{$\conjesp{R}$ }
\newcommand{\reales}{\conjesp{R}}
\newenvironment{tablaverdad}[1]{\begin{center}\begin{tabular}{#1}}{\end{tabular}\end{center}}

\setlength{\parindent}{0cm}

