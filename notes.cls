\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}


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
\RequirePackage{fancyhdr}
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
\newtheorem{theorem}{Theorem}[section]
\newtheorem*{proposition}{Proposition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}

\theoremstyle{defbreak}
\newtheorem{defn}[theorem]{Definition}
\newtheorem*{fact}{Fact}
\newtheorem{example}[theorem]{Example}

\theoremstyle{rmkbreak}
\newtheorem*{remark}{Remark}

% \renewcommand*{\proofname}{Solution}

%%%% Double line
\tcolorboxenvironment{theorem}{% `theorem' from `amsthm'
    blanker,breakable,
    left=4mm,right=0mm,
    before skip=15pt,after skip=15pt,
    borderline west={0.5pt}{0pt}{black},
    borderline west={0.5pt}{1.5pt}{black},
}
\tcolorboxenvironment{defn}{% `definition' from `amsthm'
    blanker,breakable,
    left=4mm,right=0mm,
    before skip=15pt,after skip=15pt,
    borderline west={0.5pt}{0pt}{black},
    borderline west={0.5pt}{1.5pt}{black},
}

%%%% Single line
\tcolorboxenvironment{proposition}{% `proposition' from `amsthm'
    blanker,breakable,
    left=4mm,right=0mm,
    before skip=15pt,after skip=15pt,
    % borderline west={0.5pt}{0pt}{black},
}
\tcolorboxenvironment{corollary}{% `corollary' from `amsthm'
    blanker,breakable,
    left=4mm,right=0mm,
    before skip=15pt,after skip=15pt,
    % borderline west={0.5pt}{0pt}{black},
}

%%%% Box or Indent
\tcolorboxenvironment{example}{% `example' from `amsthm'
    blanker,breakable,boxsep=2mm,
    before skip=15pt,after skip=15pt,
    borderline={0.5pt}{0pt}{black},
}
\tcolorboxenvironment{proof}{% `proof' from `amsthm'
    blanker,breakable,
    left=8mm,right=8mm,
    before skip=15pt,after skip=15pt
}


%% MATH 55A SHORTCUTS
% \newcommand{\inn}[1]{\left\langle #1\right\rangle}
% \newcommand{\tens}{\otimes}
\newcommand{\norm}[1]{\left\Vert #1\right\Vert}
\newcommand{\gdual}[1]{\widehat{ #1 }}
\newcommand{\gddual}[1]{\widehat{\widehat{ #1 }}}

\newcommand{\R}{\ensuremath{\mathbb R}}
\newcommand{\C}{\ensuremath{\mathbb C}}
\newcommand{\Z}{\ensuremath{\mathbb Z}}
\newcommand{\F}{\ensuremath{\mathbb F}}
\newcommand{\Q}{\ensuremath{\mathbb Q}}
\renewcommand{\P}{\ensuremath{\mathcal P}}
\renewcommand{\O}{\ensuremath{\emptyset}}

\let\temp\phi
\let\phi\varphi
\let\varphi\temp

\newcommand{\inj}{\hookrightarrow}
\newcommand{\surj}{\twoheadrightarrow}

\newcommand{\dmo}{\DeclareMathOperator}
\dmo{\im}{im}
\dmo{\id}{id}
\dmo{\spn}{span}
\dmo{\chr}{char}
\dmo{\ev}{ev}
\dmo{\tr}{tr}
\dmo{\vect}{Vect}
\dmo{\Hom}{Hom}
\dmo{\Mor}{Mor}
\dmo{\End}{End}
\dmo{\Sym}{Sym}
\dmo{\Aut}{Aut}
\dmo{\rank}{rank}
\dmo{\lcm}{lcm}
\dmo{\Stab}{Stab}
\dmo{\gKer}{gKer}
\dmo{\evIm}{evIm}
\dmo{\nll}{null}
\dmo{\Ann}{Ann}
\dmo{\SL}{SL}
\dmo{\GL}{GL}
\dmo{\PSL}{PSL}
\dmo{\PGL}{PGL}

%% FORMATTING
\pagestyle{fancy}

\fancyhf{}
\newcommand{\makeheader}[2]{
    \fancyhead[L]{#1}
    \fancyhead[R]{#2}
}
\fancyfoot[R]{Pg. \thepage}

% \renewcommand{\headrulewidth}{1pt}
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

\renewcommand{\emph}[1]{\underline{\bfseries{#1}}}

