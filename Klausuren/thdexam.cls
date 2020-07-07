%%% Peter Faber
%%% Department of Applied Informatics
%%% THD
%%% D-94469 Deggendorf
%%% peter.faber@th-deg.de

% The newest version of this documentclass should always be available
% from my web page: http://mygit.th-deg.de/


\def\fileversion{0.1}
\def\filedate{2019/12/09}

\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{thdexam}[\filedate\space Version \fileversion\space by Peter Faber]
%\ProvidesClass{thdexam}[\filedate\space Version \fileversion\space by Peter Faber]


\ifx\thdseparator\undefined
\newcommand{\thdseparator}{{ / }}
\renewcommand{\thdseparator}{\ \ensuremath{\big\vert}\ }
\fi


\newcommand{\thdappend}[2]{
\ifdefined#1
\edef#1{\mbox{#1}\thdseparator{}\mbox{#2}}
\else
\edef#1{#2}
\fi
}


\newcommand{\thdger}{
 \thdappend{\thdregnr}{Matrikelnummer}
 \thdappend{\thdcipher}{Platzziffer}
 \ifx\thdsemester\undefined\thdappend{\thdsemester}{Semester}\fi
 \thdappend{\thdduration}{Dauer}
 \thdappend{\thddate}{Datum}
 \thdappend{\thdtime}{Zeit}
 \thdappend{\thdnpages}{Anzahl d. Blätter}
 \thdappend{\thdexamtype}{Prüfungsart}
 \thdappend{\thdsupplies}{Hilfsmittel}
 \thdappend{\thdexaminer}{Prüfer}
 \thdappend{\thdcourse}{Kurs}
 \thdappend{\thdcostudies}{Studiengang}
 \thdappend{\thdpoint}{Punkt}
 \thdappend{\thdpoints}{Punkte}
 \thdappend{\thdgrade}{Note}
 \thdappend{\thdbonuspoint}{Bonuspunkt}
 \thdappend{\thdbonuspoints}{Bonuspunkte}
 \thdappend{\thdsoltitle}{Lösungsvorschlag}
 \thdappend{\thdchqword}{Frage}
 \thdappend{\thdchpgword}{Seite}
 \thdappend{\thdchpword}{Punkte}
 \thdappend{\thdchbpword}{Bonuspunkte}
 \thdappend{\thdchsword}{Erreicht}
 \thdappend{\thdchtword}{Gesamt}
 \thdappend{\thdhpword}{Punkte} % Punktetabelle
 \thdappend{\thdhsword}{Ergebnis}
 \thdappend{\thdhqword}{Aufgabe}
 \thdappend{\thdhtword}{Summe}
 \newcommand{\thdgreetingger}{%
\mbox{}\\
\textbf{Bevor Sie beginnen:}
\begin{itemize}
	\item Kontrollieren Sie, ob Ihr Angabenblatt vollständig ist.
	\item Schreiben Sie Ihre Platzziffer auf jede Seite.
	\item Lesen Sie sich alle Aufgaben durch und verschaffen Sie sich einen Überblick über den Umfang der Aufgaben.
	\item Stellen Sie sicher, dass Ihre Antworten vollständig und lesbar sind.
%	\item Schreiben Sie nicht außerhalb des markierten Seitenrandes.
\end{itemize}
\textbf{Viel Erfolg!}\\\mbox{}\hrulefill\\
 }
}



\newcommand{\thdeng}{
 \thdappend{\thdregnr}{Registration number}
 \thdappend{\thdcipher}{Seat number}
 \ifx\thdsemester\undefined\thdappend{\thdsemester}{Semester}\fi
 \thdappend{\thdduration}{Duration}
 \thdappend{\thddate}{Date}
 \thdappend{\thdtime}{Time}
 \thdappend{\thdnpages}{Number of pages}
 \thdappend{\thdexamtype}{Exam type}
 \thdappend{\thdsupplies}{Supplies}
 \thdappend{\thdexaminer}{Examiner}
 \thdappend{\thdcourse}{Course}
 \thdappend{\thdcostudies}{Course of studies}
 \thdappend{\thdpoint}{Point}
 \thdappend{\thdpoints}{Points}
 \thdappend{\thdgrade}{Grade}
 \thdappend{\thdbonuspoint}{Bonus Point}
 \thdappend{\thdbonuspoints}{Bonus Points}
 \thdappend{\thdsoltitle}{Possible Solution}
 \thdappend{\thdchqword}{Question}
 \thdappend{\thdchpgword}{Page}
 \thdappend{\thdchpword}{Points}
 \thdappend{\thdchbpword}{Bonus Points}
 \thdappend{\thdchsword}{Score}
 \thdappend{\thdchtword}{Total}
 \thdappend{\thdhpword}{Points}
 \thdappend{\thdhsword}{Result}
 \thdappend{\thdhqword}{Question}
 \thdappend{\thdhtword}{Total}
 \newcommand{\thdgreetingeng}{%
\mbox{}\\
\textbf{Before you start:}
\begin{itemize}
	\item Check whether the questionnaire is complete.
	\item Note the seat number on each page.
	\item Read all the questions first to gain an overview over he complexities of the exercises.
	\item Please ensure that your answers are complete and well readable.
%	\item Do not write outside the marked margins on the pages.
\end{itemize}
\textbf{Good luck!}\\\mbox{}\hrulefill\\
 }
}


% Load base class: exam
\DeclareOption{ger}{\thdger{}} % use German terms (default)
\DeclareOption{eng}{\thdeng{}} % use English terms
\DeclareOption{pffl}{\def\pffl{pfflayout}} % use different layout (Faber)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}} % pass everything else to exam
\ProcessOptions\relax

\LoadClass[a4paper,11pt]{exam}

% if nothing is defined yet, load defaults
% (nothing special about using thdpoint here!)
\ifx\thdpoint\undefined
\thdger{}
\fi

% Greeting in German or English or German, then English, WITHOUT SEPARATOR!
% (plus: possible problems using def/edef when trying to do that with \thdappend)
% \thdgreetingger, thdgreetingeng; then: \if\defined\thdgreetingger\if\defined\thdgreetingeng...
\ifdefined\thdgreetingger
 \ifdefined\thdgreetingeng
  \def\thdgreeting{\thdgreetingger\thdgreetingeng}
 \else
  \def\thdgreeting{\thdgreetingger}
 \fi
\else
  \def\thdgreeting{\thdgreetingeng}
\fi

%\usepackage[ngerman]{babel}
%\RequirePackage[ngerman]{babel}
\RequirePackage{fontspec}
\setmainfont{Arial}
\RequirePackage{polyglossia}
\setmainlanguage[babelshorthands=true]{german}


\RequirePackage[top=5.1cm, bottom=3cm,left=3cm, right=3cm]{geometry}


% \usepackage[top=3.5cm,headsep=0.5cm,headheight=3cm, left=1.5cm,right=1.5cm]{geometry}
% \usepackage{booktabs} % schöne Tabellen
 \RequirePackage{graphicx}
% \usepackage{csquotes} % Anführungszeichen
% \usepackage{paralist} % kompakte Aufzählungen
 \RequirePackage{amsmath}
 %,textcomp,tikz} %diverses
 %\usepackage{eso-pic} % Bilder im Hintergrund
 %\usepackage{mdframed} % Boxen
% \newmdenv[linecolor=black,backgroundcolor=gray!15,frametitle={Punktverteilung},leftmargin=1cm,rightmargin=1cm]{infobox}
\RequirePackage{amssymb,multirow,tabularx,pgf,pgfpages}
\RequirePackage{libertine}
\RequirePackage{longtable}


% set the actual text for points etc...

\pointpoints{\thdpoint}{\thdpoints}
\bonuspointpoints{\thdbonuspoint}{\thdbonuspoints}
\renewcommand{\solutiontitle}{\noindent\textbf{\thdsoltitle:}%
 \enspace}
 
\chqword{\thdchqword}
\chpgword{\thdchpgword}
\chpword{\thdchpword}
\chbpword{\thdchbword}
\chsword{\thdchsword}
\chtword{\thdchtword}
\hpword{\thdhpword:} % Punktetabelle
\hsword{\thdhsword:}
\hqword{\thdhqword:}
\hpword{\thdhpword:}
\htword{\thdhtword:}

\vqword{\thdqword}
\vpword{\thdpword}
\vsword{\thdchsword}
\vtword{\thdhtword:}


\input{thdstyle-adapted}

\input{titlepage-adapted}

%\newenvironment{thdquestions}{\begin{longtable}{|X|} \begin{questions}}{\end{questions}\hline\end{longtable}}

