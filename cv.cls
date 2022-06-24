% cv.cls
%
% A latex class for writing curriculum vitae

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[22/06/2022 CV Class]
\LoadClass[11pt]{article}

\author{Evan Snoswell}

\newcommand{\headlinecolor}{\normalcolor}
\RequirePackage{fontspec}
\RequirePackage{tabularx}
\RequirePackage{xcolor}
\RequirePackage{geometry}
\RequirePackage{ifthen}

\defaultfontfeatures+[\sffamily,\ttfamily]{Scale=MatchLowercase}
\setmainfont{FreeSerif}
\renewcommand\maketitle{%
    \begin{raggedleft}
        \huge\textbf{\@title}
    \end{raggedleft}
}

\newenvironment{eventlist}
{ \tabularx{\textwidth}{@{} l X @{}} }
{ \endtabularx }

\newcommand{\event}[4]{%
    #1 & \textbf{#2} \emph{#3} 
    \ifthenelse{\equal{#4}{}}{}{\newline}
    \color{darkgray} #4 \\
}

\newenvironment{details}
{ \tabularx{\textwidth}{@{} l X @{}} }
{ \endtabularx }

\newcommand{\detail}[2]{%
    \textbf{#1} & #2 \\
}

\newenvironment{skills}
{ \tabularx{\textwidth}{@{} l X @{}} }
{ \endtabularx }

\newcommand{\skill}[2]{%
    \textbf{#1} & #2 \\
}


\geometry{legalpaper, portrait, margin=2cm}
\thispagestyle{empty}
