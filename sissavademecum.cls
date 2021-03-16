% !TEX encoding = UTF-8 Unicode
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                         %
%                  SISSA Vademecum Class                  %
%                   version 2021/02/18                    %
%                                                         %
% Authors: SISSA Students' Representatives                %
%          <studentreps@sissa.it>                         %
%                                                         %
% Language: English                                       %
%                                                         %
% Character set encoding: UTF-8                           %
%                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Class info                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sissavademecum}[2021/02/18 SISSA Vademecum Class]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Basic class definitions, typesetting, bibliography      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[a4paper,11pt,oneside,openright]{report}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{lmodern}
\RequirePackage[fixed]{fontawesome5}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graphics                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[usenames,dvipsnames,hyperref]{xcolor}
\RequirePackage{graphicx}
\RequirePackage[export]{adjustbox}
\RequirePackage{transparent}
\RequirePackage{tikz}
\RequirePackage{eso-pic}
\RequirePackage[%
    margin        = 2.8cm  ,
    bottom        = 3cm    ,
    headsep       = 0.5cm  ,
    top           = 3cm    ,
    includefoot            ,
    footskip      = 30pt   ,
    headheight    = 13.6pt ,
    bindingoffset = 5mm    ,
    heightrounded
]{geometry}
\RequirePackage{fancyhdr}  % LCR left/center/right field - EO even odd number page - HF header footer
\graphicspath{{figures/PNG/}{figures/PDF/}{figures/}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Utilities                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{emptypage}
\RequirePackage[font=small]{quoting}  % Alternative to quotation/quote
\RequirePackage{marvosym}             % Produce ``€'' with \EUR{}
\RequirePackage[level]{datetime}      % Format dates; "level" produces st,nd,rd,th at text level
\RequirePackage{titlesec}             % Easier section customizations
\RequirePackage{ccicons}
\RequirePackage{booktabs}
\RequirePackage{comment}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page Style                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{1pt}    % Top rule width
\fancyfoot[C]{\thepage}               % Page number at center bottom
\setcounter{tocdepth}{2}              % Index depth
%\renewcommand\sectionmark[1]{\markright{\thesection.\ #1}}
%\renewcommand{\thesection}{\arabic{section}}
\setlength{\headheight}{32pt}
\chead{
    \normalfont\sffamily\large\bfseries
    % --- TikZ implementation --- %
    % \begin{tikzpicture}%[baseline={([yshift=-.8ex]current bounding box.center)}]
    %     \ifnum\value{chapter}=0
    %         \node[color=black,label=right:{\leftmark}] at (0em,1em) {};
    %     \else
    %         \draw[fill,color=black] (0,0) rectangle (2em,2em);
    %         \draw[color=white] (1em,1em) node {\thechapter};
    %         \node[color=black,label=right:{\leftmark}] at (2em,1em) {};
    %     \fi
    %     %\node[anchor=west] at (2em,1em) {\leftmark};
    % \end{tikzpicture}
    % --- More plain alternative --- %
    \ifnum\value{chapter}=0
    \else
        %\thechapter\ {\kern1pt\rule[-\dp\strutbox]{1pt}{\baselineskip}\kern1pt}
        \thechapter.\ 
    \fi
    \MakeUppercase{\leftmark}
}
\renewcommand\chaptermark[1]{\markboth{\protect #1}{}}
\renewcommand\sectionmark[1]{\markright{\protect #1}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hyperref configuration                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[%hypertex,
    unicode            = true        ,
    plainpages         = false       , 
    pdfpagelabels      = true        , 
    bookmarks          = true        ,
    bookmarksnumbered  = true        ,
    bookmarksopen      = true        ,
    breaklinks         = true        ,
    backref            = false       ,
    colorlinks         = true        ,
    hyperindex         = true        ,
    linktocpage        = true        ,
    hyperfigures       = true        ,
    pdfstartpage       = 1           , 
    pdfstartview       = FitV        ,
   %pdfborder          = {0 0 0}     , 
    pdfpagemode        = UseNone     , 
    pageanchor         = true        , 
    pdfpagemode        = UseOutlines ,
    plainpages         = false       ,
    bookmarksopenlevel = 1           ,
    hypertexnames      = true        , 
    pdfhighlight       = /O
]{hyperref}
\hypersetup{
    linkcolor         = RoyalBlue ,
    urlcolor          = RoyalBlue ,
    citecolor         = RoyalBlue ,
    anchorcolor       = RoyalBlue  
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Colors, Commands, etc                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\linkemail}[1]{\href{mailto:#1}{\textcolor{RoyalBlue}{#1}}}
\newdateformat{titlepagedate}{\monthname[\THEMONTH] \ordinaldate{\THEDAY} \THEYEAR}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Titlepage Setup                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{

    % --- Titlepage --- %
    \begin{titlepage}
	    \newgeometry{margin=1cm,bottom=2cm, tmargin=2cm,includefoot,footskip=30pt,headheight=13.6pt}	
		\thispagestyle{empty}
	    % **** Transparent SISSA ship in background
	    \AddToShipoutPicture*{
	        \put(-60,50){
	            \parbox[b][\paperheight]{\paperwidth}{%
	                \vfill
	                \centering
	                % --- This one below doesn't work with XeLaTeX --- %
	                {\transparent{0.3}\includegraphics[width=1.4\textwidth]{SISSA_background}}
	                % --- Alternative to transparent using TikZ; works with XeLaTeX as well -- %
	                %{\begin{tikzpicture}
	                %    {\node[opacity=0.3]{\includegraphics[width=1.4\textwidth]{SISSA_background}};}
	                %\end{tikzpicture}}
	                \vfill
		}}} % ****
        \begingroup
            \begin{minipage}{0.2\textwidth}
                \vbox{\vspace{18cm}\hspace{0.4cm}\includegraphics[scale=0.5]{SISSA_logo}}
            \end{minipage}
            \hspace{0cm}
            \begin{minipage}{0.2\textwidth}
                \rule{1.5pt}{\textheight}
            \end{minipage}
            \begin{minipage}{0.5\textwidth}
                \vspace{2cm}\hspace{-3 cm} % Whitespace between the vertical line and title page text
                \parbox[b]{4\textwidth}{   % Paragraph box which restricts text to less than the width of the page
                    {\noindent \Huge  \textsc{Student Vademecum}}\\[3\baselineskip] % Title
                    {\noindent \large \textit{\textsc{Advice to survive and thrive, from students to students}}}\\[33\baselineskip] % Subtitle
                    %{ \Large \textsc{}()}\\[25\baselineskip] % Author
                    { Version: \titlepagedate{\today} }\\[\baselineskip] % Version (date)
                }
            \end{minipage}
        \endgroup
    \end{titlepage}
    
    \restoregeometry
    
    % --- Copyright Page --- %
    {	
        \thispagestyle{empty}
        
	    \setlength\parindent{0pt}
        
        \null\vfill
        
        \textbf{No Copyright}\\
        \cczero\ This document is released into the public domain using the CC0 code.
        %To the extent possible under law, we waive all copyright and related or neighbouring rights to this work.
        
        To view a copy of the CC0 code, visit: \\\url{http://creativecommons.org/publicdomain/zero/1.0/}
        
        \medskip
        
        \textbf{Contribute!} \\
        The \LaTeX source code of this document is available on GitHub at:\\\url{https://github.com/studentreps/vademecum}
        
        Did you notice a mistake or do you have a suggestion? You are welcome to open an issue or a pull request at the address above; any contribution is of great assistance!
	}
	
	% --- Reset everything --- %
    \cleardoublepage
    \pagenumbering{arabic}
    \setcounter{page}{3}
	
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Chapter Style Setup                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Implementation with titlesec           --- %
% --- https://tex.stackexchange.com/a/141817 --- %
\newcommand*{\chapnumfont}{\normalfont\sffamily\huge\bfseries}
\titleformat{\chapter}[display]
{\filleft\bfseries\sffamily}
{\filleft%
    \begin{tikzpicture}
        %\draw[fill,color=black] (0,0) rectangle (2cm,2cm);
        %\draw[color=white] (1cm,1cm) node {\chapnumfont\thechapter};
        \draw[line width=2pt,color=black] (0,0) rectangle (2cm,2cm);
        \draw[color=black] (1cm,1cm) node {\chapnumfont\thechapter};
    \end{tikzpicture}
}
{20pt}
{\Huge}

% --- Alternative without titlesec           --- %
% --- https://tex.stackexchange.com/a/141566 --- %
% \newcommand*{\chapnumfont}{\normalfont\sffamily\huge\bfseries}
% \newcommand*{\printchapternum}{
%   \begin{tikzpicture}
%     \draw[fill,color=black] (0,0) rectangle (2cm,2cm);
%     \draw[color=white] (1cm,1cm) node { \chapnumfont\thechapter };
%   \end{tikzpicture}
% }
% \newcommand*{\chaptitlefont}{\normalfont\sffamily\Huge\bfseries}
% \newcommand*{\printchaptertitle}[1]{\flushright\chaptitlefont#1}
% \makeatletter
% % \@makechapterhead prints regular chapter heading.
% % Taken directly from report.cls and modified.
% \def\@makechapterhead#1{%
%   \vspace*{50\p@}%
%   {\parindent \z@ \raggedleft
%     \ifnum \c@secnumdepth >\m@ne
%         \printchapternum
%         \par\nobreak
%         \vskip 20\p@
%     \fi
%     \interlinepenalty\@M
%     \printchaptertitle{#1}\par\nobreak
%     \vskip 40\p@
%   }}
% % \@makeschapterhead prints starred chapter heading.
% % Taken directly from report.cls and modified.
% \def\@makeschapterhead#1{%
%   \vspace*{50\p@}%
%   {\parindent \z@ \raggedleft
%     \interlinepenalty\@M
%     \printchaptertitle{#1}\par\nobreak
%     \vskip 40\p@
%   }}
% \makeatother


% End of class definitions
\endinput