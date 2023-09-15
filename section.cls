\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{section}


%% PACKAGES
\LoadClass[12pt]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage[margin=1in]{geometry}
\geometry{letterpaper}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{comment}
\RequirePackage{quiver}
\RequirePackage{hyperref}
\RequirePackage{csquotes}
\RequirePackage{etoolbox}
\RequirePackage[shortlabels]{enumitem} % Lettered lists
\RequirePackage{lmodern}
\RequirePackage{pdfpages}
\RequirePackage{wrapfig}
\RequirePackage{xfrac}

\RequirePackage{libertine}
\RequirePackage[libertine]{newtxmath}

\let\temp\phi
\let\phi\varphi
\let\varphi\temp

\newcommand\TODO[1]{\textcolor{red}{\textbf{#1}}}

% \newcommand{\cmt}[1]{\text{{\fontfamily{cmtt}\selectfont #1}}}

\RequirePackage{pifont, marvosym}

\newtheorem{theorem}{Theorem}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{lemma}[theorem]{Lemma}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{notation}[theorem]{Notation}
\newtheorem{example}[theorem]{Example}
\newtheorem{algorithm}[theorem]{Algorithm}
\newtheorem{pencil}[theorem]{\noindent \ding{46}}
\newtheorem{biohazard}[theorem]{\noindent \Biohazard}

%% FORMATTING
\pagestyle{fancy}

\fancyhf{}
\newcommand{\makeheader}[2]{
    \fancyhead[L]{#1}
    \fancyhead[R]{#2}
}
\fancyfoot[R]{Pg. \thepage}

% \setlength{\headheight}{15pt}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0ex}


\newcommand{\createsectionheader}[3]{
    \noindent
    \begin{center}
    \framebox{
        \vbox{
        \hbox to 6.25in { {Stat 110: Introduction to Probability}
        \hfill #1}
        \vspace{4mm}
        \hbox to 6.25in { {\LARGE \hfill \bf #2 \hfill} }
        \vspace{4mm}
        \hbox to 6.25in { {\it Rushil Mallarapu (\href{mailto:rushil\_mallarapu@college.harvard.edu}{rushil\_mallarapu@college.harvard.edu}) \hfill \normalfont #3} }
        }
    }
    \end{center}
    \vspace*{1mm}
}

% \renewcommand{\emph}[1]{\underline{\bfseries{#1}}}

% \newcommand\answer{\ifanswers\color{red}}
% \let\endanswer{\else\pagebreak\fi}

