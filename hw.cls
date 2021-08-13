\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hw}


%% PACKAGES
\LoadClass[11pt]{article}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{amsfonts}
\RequirePackage[margin=1in]{geometry}
\RequirePackage[most]{tcolorbox}
\RequirePackage{titlesec}
\RequirePackage[shortlabels]{enumitem} % Lettered lists


%% ENVIRONMENTS
\newtcolorbox{digression}{
    blanker,breakable,
    halign=justify,
    left=20pt,
    before skip=5pt,after skip=10pt,
    coltext=blue!75!black
}

\newtheoremstyle{break}% name
  {}%         Space above, empty = `usual value'
  {}%         Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec

\newtheoremstyle{defbreak}% name
  {}%         Space above, empty = `usual value'
  {}%         Space below
  {}%         Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
  
\newtheoremstyle{rmkbreak}% name
  {}%         Space above, empty = `usual value'
  {}%         Space below
  {}%         Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\itshape}% Thm head font
  {:}%        Punctuation after thm head
  { }% Space after thm head: \newline = linebreak
  {}%         Thm head spec

\theoremstyle{break}
\newtheorem{problem}{Problem}
\renewcommand*{\proofname}{Solution}


\tcolorboxenvironment{proof}{% `proof' from `amsthm'
    blanker,breakable,
    left=8mm,right=8mm,
    before skip=15pt,after skip=15pt
}


%% MATH 55A SHORTCUTS
\newcommand{\inn}[1]{\left\langle #1\right\rangle}
\newcommand{\norm}[1]{\left\Vert #1\right\Vert}
\newcommand{\tens}{\otimes}
\newcommand{\dsum}{\oplus}
\newcommand{\dual}[1]{\widehat{ #1 }}
\newcommand{\ddual}[1]{\widehat{\widehat{ #1 }}}

\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\newcommand{\Z}{\mathbb Z}
\newcommand{\F}{\mathbb F}
\newcommand{\Q}{\mathbb Q}
\renewcommand{\O}{\emptyset}

\newcommand{\inj}{\hookrightarrow}
\newcommand{\surj}{\twoheadrightarrow}

\newcommand{\dmo}{\DeclareMathOperator}
\dmo{\im}{im }
\dmo{\ev}{ev }
\dmo{\tr}{tr }
\dmo{\vect}{Vect}
\dmo{\Hom}{Hom}
\dmo{\Mor}{Mor}
\dmo{\End}{End}
\dmo{\Sym}{Sym}
\dmo{\Aut}{Aut}
\dmo{\rank}{rank}
\dmo{\lcm}{lcm}
\dmo{\Stab}{Stab}


%% FORMATTING
\usepackage{fancyhdr}
\pagestyle{fancy}

\fancyhf{}
\newcommand{\makeheader}[2]{
    \fancyhead[L]{#1}
    \fancyhead[R]{#2}
}
\fancyfoot[R]{Pg. \thepage}

\renewcommand{\headrulewidth}{1pt}
% \renewcommand{\footrulewidth}{0pt}

\setlength{\headheight}{14pt}

\setlength{\parindent}{0pt}
\setlength{\parskip}{1.25ex}


\titleformat
{\section} % command
{\bfseries\Large\itshape} % format
{\thesection}{.5em}{} % before-code
[
\vspace{-5mm}%
\rule{0.75\textwidth}{1pt}
\normalfont\bfseries
] % after-code

\titleformat
{\subsection} % command
{\bfseries\Large\itshape} % format
{\thesubsection.}{.5em}{} % before-code
[
\vspace{-5mm}%
\rule{0.5\textwidth}{0.75pt}
\normalfont\bfseries
] % after-code

