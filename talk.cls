\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{talk}


%% PACKAGES
\LoadClass[leqno]{amsart}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage[fontsize=13pt]{scrextend}
\RequirePackage{setspace}
% \RequirePackage{titling}
% \renewcommand{\maketitlehooka}{\Large}
% \renewcommand{\maketitlehookb}{\normalsize}

\RequirePackage{mathrsfs}
\RequirePackage[margin=1in]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{comment}
\RequirePackage{quiver}
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage{csquotes}
\RequirePackage[shortlabels]{enumitem} % Lettered lists
\RequirePackage{lmodern}

\RequirePackage{libertine}
\RequirePackage[libertine]{newtxmath}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\hypersetup{%
  bookmarksnumbered=true,%
  bookmarks=true,%
  colorlinks=true,%
  linkcolor=BlueViolet,%
  citecolor=BlueViolet,%
  filecolor=BlueViolet,%
  menucolor=BlueViolet,%
  urlcolor=BlueViolet,%
  pdfnewwindow=true,%
  pdfstartview=FitBH}   
  
\pagestyle{plain}

\let\fullref\autoref
%
%  \autoref is very crude.  It uses counters to distinguish environments
%  so that if say {lemma} uses the {theorem} counter, then autrorefs
%  which should come out Lemma X.Y in fact come out Theorem X.Y.  To
%  correct this give each its own counter eg:
%                 \newtheorem{theorem}{Theorem}[section]
%                 \newtheorem{lemma}{Lemma}[section]
%  and then equate the counters by commands like:
%                 \makeatletter
%                   \let\c@lemma\c@theorem
%                  \makeatother
%
%  To work correctly the environment name must have a corrresponding 
%  \XXXautorefname defined.  The following command does the job:
%
\def\makeautorefname#1#2{\expandafter\def\csname#1autorefname\endcsname{#2}}
%
%  Some standard autorefnames.  If the environment name for an autoref 
%  you need is not listed below, add a similar line to your TeX file:
%  
%\makeautorefname{equation}{Equation}%
\def\equationautorefname~#1\null{(#1)\null}
\makeautorefname{footnote}{footnote}%
\makeautorefname{item}{item}%
\makeautorefname{figure}{Figure}%
\makeautorefname{table}{Table}%
\makeautorefname{part}{Part}%
\makeautorefname{appendix}{Appendix}%
\makeautorefname{chapter}{Chapter}%
\makeautorefname{section}{Section}%
\makeautorefname{subsection}{Section}%
\makeautorefname{subsubsection}{Section}%
\makeautorefname{theorem}{Theorem}%
\makeautorefname{thm}{Theorem}%
\makeautorefname{cor}{Corollary}%
\makeautorefname{lem}{Lemma}%
\makeautorefname{prop}{Proposition}%
\makeautorefname{pro}{Property}
\makeautorefname{conj}{Conjecture}%
\makeautorefname{defn}{Definition}%
\makeautorefname{notn}{Notation}
\makeautorefname{notns}{Notations}
\makeautorefname{rem}{Remark}%
\makeautorefname{quest}{Question}%
\makeautorefname{exmp}{Example}%
\makeautorefname{ax}{Axiom}%
\makeautorefname{claim}{Claim}%
\makeautorefname{ass}{Assumption}%
\makeautorefname{asss}{Assumptions}%
\makeautorefname{con}{Construction}%
\makeautorefname{prob}{Problem}%
\makeautorefname{warn}{Warning}%
\makeautorefname{obs}{Observation}%
\makeautorefname{conv}{Convention}%


%
%                  *** End of hyperref stuff ***

%theoremstyle{plain} --- default
\newtheorem{theorem}{Theorem}[section]
\newtheorem{cor}{Corollary}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{prob}{Problem}[section]
\newtheorem{conj}{Conjecture}[section]

\theoremstyle{definition}
\newtheorem{defn}{Definition}[section]
\newtheorem{ass}{Assumption}[section]
\newtheorem{asss}{Assumptions}[section]
\newtheorem{ax}{Axiom}[section]
\newtheorem{con}{Construction}[section]
\newtheorem{exmp}{Example}[section]
\newtheorem{notn}{Notation}[section]
\newtheorem{notns}{Notations}[section]
\newtheorem{pro}{Property}[section]
\newtheorem{quest}{Question}[section]
\newtheorem{rem}{Remark}[section]
\newtheorem{warn}{Warning}[section]

%%%% hack to get fullref working correctly
\makeatletter
\let\c@obs=\c@theorem
\let\c@cor=\c@theorem
\let\c@prop=\c@theorem
\let\c@lem=\c@theorem
\let\c@prob=\c@theorem
\let\c@con=\c@theorem
\let\c@conj=\c@theorem
\let\c@defn=\c@theorem
\let\c@notn=\c@theorem
\let\c@notns=\c@theorem
\let\c@exmp=\c@theorem
\let\c@ax=\c@theorem
\let\c@pro=\c@theorem
\let\c@ass=\c@theorem
\let\c@warn=\c@theorem
\let\c@rem=\c@theorem
\let\c@sch=\c@theorem
\let\c@equation\c@theorem
\numberwithin{equation}{section}
\makeatother


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \bibliographystyle{plain}

\let\temp\phi
\let\phi\varphi
\let\varphi\temp

\renewcommand{\datename}{\textit{Date}:}


% \usepackage{abstract}
% \renewcommand{\abstractname}{}    % clear the title
% \renewcommand{\absnamepos}{empty}

% \newcommand\TODO[1]{\textcolor{red}{\textbf{#1}}}
% \newcommand{\cmt}[1]{\text{{\fontfamily{cmtt}\selectfont #1}}}


%% FORMATTING
% \pagestyle{fancy}

% \fancyhf{}
% \newcommand{\makeheader}[2]{
%     \fancyhead[L]{#1}
%     \fancyhead[R]{#2}
% }
% \fancyfoot[R]{Pg. \thepage}

% \setlength{\headheight}{14pt}

% \setlength{\parindent}{0pt}
% \setlength{\parskip}{10ex}

% \renewcommand{\emph}[1]{\underline{\bfseries{#1}}}
