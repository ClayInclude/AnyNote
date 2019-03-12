% class CLAYNOTE
% @author Clay
% @date 2019.03.11
% @version v0.1.0
\ProvidesClass{claynote}[2019/03/11 v0.1]

\NeedsTeXFormat{LaTeX2e}

% based on ctexbook
\LoadClass[UTF8]{ctexbook}

% package require and settings in sty not here
% this class only require one package which claynote
\RequirePackage{claynote}

% default value
\def\@value@title@note{Clay Note}
\def\@value@title@cn{}
\def\@value@title@en{}
% you can not redefine author, it must be Clay.
\def\@value@author{Clay}

% you should redefine these.
\def\titlenote#1{\def\@value@title@note{#1}}
\def\titlecn#1{\def\@value@title@cn{#1}}
\def\titleen#1{\def\@value@title@en{#1}}

% anyone else want to be the author?
\renewcommand\author[1]{\def\@value@author{#1}}

% title here.
\renewcommand\maketitle%
{%
    \cleardoublepage%
    \thispagestyle{empty}%
    \vspace*{20pt} %
%
    \begin{center}%
        \textbf{\Huge{\@value@title@note}}%
        \vskip 80pt%
%
        \textit{\huge{\@value@title@cn}}%
        \vskip 64pt%
%
        \textit{\huge{\@value@title@en}}%
        \vskip 128pt%
%
        \textsl{\LARGE{\@value@author}}%
        \vskip 64pt%
%
        \textsl{\LARGE{\today}}%
    \end{center}%
}

% defined theorem

% this is an exmaple for xparse
% \newtheorem{@defines}{定义}[chapter]
% \NewDocumentEnvironment{defines}{o}
% {
%     \IfNoValueTF{#1}
%     {\begin{@defines}\mbox{}\par}
%     {\begin{@defines}[#1]\mbox{}\par}
% }
% {    
%     \end{@defines}
% }

% theorem header and body indent both
\def\newthm#1#2%
{%
    \newtheorem{@#1}{#2}[chapter]%
    \NewDocumentEnvironment{#1}{o}%
    {%
        \IfNoValueTF{##1}%
        {%
            \begin{@#1}%
                \mbox{}%
                \par%
        }%
        {%
            \begin{@#1}[##1]%
                \mbox{}%
                \par%
        }%
    }%
    {%
        \end{@#1}%
    }%
}

% real define
\newthm{defines}{定义}
\newthm{codelist}{代码}
\newthm{example}{例题}
\newthm{esolution}{解}

% defined emphasis
\def\emreg#1{\textit{#1}}
\def\emspe#1{\textit{#1}}
\def\emans#1{\textit{#1}}
\def\emcode#1{\textit{#1}}

% special paragraph
\def\solution#1{\textbf{解：}#1}
\def\warning#1{\textbf{注意：}#1}
\def\Warning#1{\textbf{警告：}#1}
\def\style#1{\textit{风格：}#1}
\def\pro#1{\textit{进阶：}#1}
\def\extension#1{\textit{扩展：}#1}
\def\nameparaph#1{\textbf\large{#1:}}
\def\paraph#1{\textbf{\large{#1}}\par}

% space
\def\vs{\vskip 3ex}
\def\hs{\hskip 3em}
\def\tbaseline{\vspace{0pt}}
\def\bbaseline{\par\vspace{0pt}}
\def\itemcaption#1{\item \emspe{#1}\par}

% some defines
\def\codeTRUE{\emcode{TRUE}}
\def\codeFALSE{\emcode{FALSE}}
\def\codetrue{\emcode{true}}
\def\codefalse{\emcode{false}}
\def\rmnum#1{\romannumeral#1}
\def\Rmnum#1{\uppercase\expandafter{\romannumeral#1}}

% symbol
\def\symbolCL{\hskip .3333em\parbox{0cm}{L}\kern -.25em\raise .5ex\hbox{C}\hskip .3333em}

% this environment do nothing, you can use it like a brace.
\newenvironment{void}[1]{#1}{}
\def\voiddef#1{#1}

\newenvironment{pre}%
{%
    \setcounter{secnumdepth}{3}%
    \setcounter{tocdepth}{4}%
%
    % document settings
    \maketitle%
%
    \pagestyle{empty}%
    \cleardoublepage%
%
    \pagenumbering{Roman}%
    \setcounter{secnumdepth}{-2}%
}%
{%
    % contents
    \tableofcontents%
    \listoffigures%
    \listoftables%
%
    \cleardoublepage%
}
    
\newenvironment{body}%
{%
    % body settings
    \pagenumbering{arabic}%
    \setcounter{secnumdepth}{3}%
}%
{%
    \cleardoublepage%
}

\newenvironment{append}%
{%
    \appendix%
}%
{%
    \cleardoublepage%
}

% macro is powerful, be careful.

% excerpt from Do Not Go Gentle Into That Good Night:
% though wise men at ther end know dark is right
% because their words had forked no lightning
% they do not go gentle into that good night

\endinput