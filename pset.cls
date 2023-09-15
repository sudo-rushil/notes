\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pset}


%% PACKAGES
\LoadClass[11pt]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{mathrsfs}
\RequirePackage[margin=1in]{geometry}
\RequirePackage[most]{tcolorbox}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{comment}
\RequirePackage{quiver}
\RequirePackage{hyperref}
\RequirePackage{csquotes}
\RequirePackage[
backend=biber,
style=alphabetic,
sorting=ynt
]{biblatex}
\RequirePackage[shortlabels]{enumitem} % Lettered lists
\RequirePackage{lmodern}

% \RequirePackage{libertine}
% \RequirePackage[libertine]{newtxmath}

\RequirePackage{newpxtext,newpxmath}

\let\temp\phi
\let\phi\varphi
\let\varphi\temp

\newcommand\TODO[1]{\textcolor{red}{\textbf{#1}}}

% \newcommand{\cmt}[1]{\text{{\fontfamily{cmtt}\selectfont #1}}}


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
\newtheorem{problem}[section]{Problem}
\newtheorem*{solution}{Solution}

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
\tcolorboxenvironment{problem}{% `definition' from `amsthm'
    colback=black!5!white,colframe=black,
    breakable,arc=1mm,
    left=2mm,right=2mm,
    before skip=15pt,after skip=15pt,
    sharp corners=downhill,
    boxrule=0.2mm
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
\tcolorboxenvironment{solution}{% `proof' from `amsthm'
    blanker,breakable,
    left=4mm,right=0mm,
    before skip=15pt,after skip=15pt
}
\tcolorboxenvironment{proof}{% `proof' from `amsthm'
    blanker,breakable,
    left=8mm,right=8mm,
    before skip=15pt,after skip=15pt
}


%% FORMATTING
\pagestyle{fancy}

\fancyhf{}
\newcommand{\makeheader}[2]{
    \fancyhead[L]{#1}
    \fancyhead[R]{#2}
}
\fancyfoot[R]{Pg. \thepage}

\setlength{\headheight}{14pt}

\setlength{\parindent}{0pt}
\setlength{\parskip}{2.5ex}

\titleformat
{\section} % command
{\bfseries\Large\itshape} % format
{\thesection}{.5em}{} % before-code
[
\vspace{-8mm}%
\rule{0.75\textwidth}{1pt}
\normalfont\bfseries
] % after-code

\titleformat
{\subsection} % command
{\bfseries\Large\itshape} % format
{\thesubsection.}{.5em}{} % before-code
[
\vspace{-8mm}%
\rule{0.5\textwidth}{0.75pt}
\normalfont\bfseries
] % after-code

\titlespacing*{\section}{0pt}{0mm}{0mm}
\titlespacing*{\subsection}{0pt}{0mm}{0mm}

% \renewcommand{\emph}[1]{\underline{\bfseries{#1}}}
