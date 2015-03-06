%% This is file `diserby.cls',
%% generated from `extreport.cls' by Boris Frenkel,
%%                Belarusian state university of transport, Belarus.
%%
%% Copyright 2015
%%
%% This file may be distributed under the terms of the Latex Project
%% public licence
%% 
%% This system is distributed in the hope that it will be useful, 
%% but WITHOUT ANY WARRANTY; without even the implied warranty of 
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{diserby}
              [2015/03/02 v1.0
 Non Standard LaTeX document class]
\newcommand\@ptsize{}
\newif\if@openright
\newif\if@thesis
% Формат А4, размер шрифта 12-14 пунктов (п.20)
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{12pt}{\renewcommand\@ptsize{12}}
\DeclareOption{14pt}{\renewcommand\@ptsize{14}}
\DeclareOption{thesis}{\@twosidefalse \@thesistrue}    % Рукопись диссертации
\DeclareOption{synopsis}{\@twosidetrue \@thesisfalse}   % Автореферат
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}

\ExecuteOptions{a4paper,14pt,thesis,final,openany}
\ProcessOptions

\input{size\@ptsize.clo}

%% Собирать только XeLaTeX-ом, со всеми вытекающими...
% Язык и шрифты
\RequirePackage{polyglossia}
\RequirePackage{fontspec}
\setmainlanguage{russian}
\setotherlanguage{english}
\defaultfontfeatures{Ligatures=TeX,Mapping=tex-text}
\setmainfont{Times New Roman}
\newfontfamily\cyrillicfont{Times New Roman}
\setsansfont{Arial}
\newfontfamily\cyrillicfontsf{Arial}
\setmonofont{Courier New}
\newfontfamily\cyrillicfonttt{Courier New}

\RequirePackage{indentfirst}  % Абзацный отступ в первом абзаце

\RequirePackage{exscale}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }

%%
%% Титульник
%%
  % Организация, в которой выполнена диссертация
  \def\thesisOrganization#1{\gdef\@thesisOrganization{#1}}
  \def\@thesisOrganization{\@latex@error{No \noexpand\thesisOrganization given}}
  % Индекс УДК
  \def\thesisUdk#1{\gdef\@thesisUdk{#1}}
  \def\@thesisUdk{\@latex@error{No \noexpand\thesisUdk given}}
  % Фамилия автора
  \def\thesisAuthorLastName#1{\gdef\@thesisAuthorLastName{#1}}
  \def\@thesisAuthorLastName{\@latex@error{No \noexpand\thesisAuthorLastName given}}
  % Имя и отчество автора
  \def\thesisAuthorFirstName#1{\gdef\@thesisAuthorFirstName{#1}}
  \def\@thesisAuthorFirstName{\@latex@error{No \noexpand\thesisAuthorFirstName given}}
  % Название диссертации
  \def\thesisTitle#1{\gdef\@thesisTitle{#1}}
  \def\@thesisTitle{\@latex@error{No \noexpand\thesisTitle given}}
  % Искомая степень с отраслью науки во множественном числе, родительном падеже
  \def\thesisDegree#1{\gdef\@thesisDegree{#1}}
  \def\@thesisDegree{\@latex@error{No \noexpand\thesisDegree given}}
  % Шифр специальности
  \def\thesisSpecialtyNumber#1{\gdef\@thesisSpecialtyNumber{#1}}
  \def\@thesisSpecialtyNumber{\@latex@error{No \noexpand\thesisSpecialtyNumber given}}
  % Наименование специальности
  \def\thesisSpecialtyTitle#1{\gdef\@thesisSpecialtyTitle{#1}}
  \def\@thesisSpecialtyTitle{\@latex@error{No \noexpand\thesisSpecialtyTitle given}}
  % Учёная степень и звание руководителя
  \def\supervisorRegalia#1{\gdef\@supervisorRegalia{#1}}
  \def\@supervisorRegalia{\@latex@error{No \noexpand\supervisorRegalia given}}
  % Фамилия и инициалы руководителя
  \def\supervisorFio#1{\gdef\@supervisorFio{#1}}
  \def\@supervisorFio{\@latex@error{No \noexpand\supervisorFio given}}
  % Место (город) написания диссертации
  \def\thesisCity#1{\gdef\@thesisCity{#1}}
  \def\@thesisCity{\@latex@error{No \noexpand\thesisCity given}}
  % Год написания диссертации
  \def\thesisYear#1{\gdef\@thesisYear{#1}}
  \def\@thesisYear{\@latex@error{No \noexpand\thesisYear given}}
  
  \newcommand\maketitle{\begin{titlepage}%
  \begin{center} \bfseries
    \@thesisOrganization
  \end{center}
  \medskip
  
  \noindent{На правах рукописи}\\
  \@thesisUdk \\
  \vspace{1cm}
  
  \begin{center}
    {\large \@thesisAuthorLastName \\ \@thesisAuthorFirstName}\\ \vspace{1cm}
    
    {\bfseries {\@thesisTitle}}\\
    %\vspace{2cm}
    \vfill
    Диссертация на соискание учёной степени\\
    \@thesisDegree \\
    \medskip
    
    по специальности {\@thesisSpecialtyNumber} -- \@thesisSpecialtyTitle
  \end{center}
  %\vspace{2cm}
  \vfill
  
  \begin{tabbing}
    \hspace{8cm} \= \kill \>
    Научный руководитель \+ \\
    \@supervisorRegalia \\
    \@supervisorFio
  \end{tabbing}
  %\vspace{4cm}
  \vfill
  
  \begin{center}
    \bfseries \@thesisCity, \@thesisYear
  \end{center}
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@thesisOrganization\@empty
  \global\let\@thesisUdk\@empty
  \global\let\@thesisAuthorLastName\@empty
  \global\let\@thesisAuthorFirstName\@empty
  \global\let\@thesisTitle\@empty
  \global\let\@thesisDegree\@empty
  \global\let\@thesisSpecialtyNumber\@empty
  \global\let\@thesisSpecialtyTitle\@empty
  \global\let\@supervisorRegalia\@empty
  \global\let\@supervisorFio\@empty
  \global\let\@thesisCity\@empty
  \global\let\@thesisYear\@empty  
  \global\let\thesisYear\relax
  \global\let\thesisCity\relax
  \global\let\supervisorFio\relax
  \global\let\supervisorRegalia\relax
  \global\let\thesisSpecialtyTitle\relax
  \global\let\thesisSpecialtyNumber\relax
  \global\let\thesisDegree\relax
  \global\let\thesisTitle\relax
  \global\let\thesisAuthorFirstName\relax
  \global\let\thesisAuthorLastName\relax
  \global\let\thesisUdk\relax
  \global\let\thesisOrganization\relax
  \global\let\date\relax
  \global\let\and\relax
}

%% ГЛАВЫ, РАЗДЕЛЫ...
\AtBeginDocument{\renewcommand{\chaptername}{ГЛАВА}}
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\renewcommand\thechapter      {\@arabic\c@chapter}
\renewcommand\thesection      {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\newcommand\@chapapp{\chaptername}
\newcommand{\@chapternameposition}{\centering}
\newcommand\chapter{\clearpage
  \global\@topnum\z@
  \@afterindenttrue
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
  \refstepcounter{chapter}%
  \typeout{\MakeUppercase\@chapapp\space\thechapter.}%
  \addcontentsline{toc}{chapter}%
  {\normalfont
    \@chapapp\space\thechapter\space\space{} #1}%
  \else
  \addcontentsline{toc}{chapter}%
  {\normalfont
    \MakeUppercase{#1}}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \@makechapterhead{#2}%
  \@afterheading}
\def\@makechapterhead#1{%
  {\parindent \z@ \raggedright \large
    \ifnum \c@secnumdepth >\m@ne
    \@chapternameposition
    \MakeUppercase{\normalfont\bfseries \MakeUppercase\@chapapp\space \thechapter}
    \par\nobreak
    \fi
    \centering
    \interlinepenalty\@M
    \MakeUppercase{\normalfont \bfseries #1}\par\nobreak
    \vskip 40\p@
  }}
  \def\@schapter#1{\@makeschapterhead{#1}%
    \@afterheading}
  \def\@makeschapterhead#1{%
    {\parindent \z@ \raggedright
      \large
      \centering
      \interlinepenalty\@M
      \MakeUppercase{\normalfont \bfseries  #1}\par\nobreak
      \vskip 20\p@
    }}
\newcommand\section{\@startsection {section}{1}{\parindent}%
                                   {3.5ex \@plus 1ex \@minus .2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\large\bfseries}}                                  
\newcommand\subsection{\@startsection{subsection}{2}{\parindent}%
                                   {3.25ex \@plus1ex \@minus.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}%
                                   {3.25ex \@plus1ex \@minus.2ex}%
                                   {-1em}%
                                   {\normalfont\bfseries}}

%% СПИСКИ
\renewcommand{\@listI}{\topsep=0pt}
\let\orig@Itemize =\itemize
\let\orig@Enumerate =\enumerate
\let\orig@Description =\description
\def\Nospacing{\itemsep=0pt \topsep=0pt \partopsep=0pt \parskip=0pt \parsep=0pt}
\renewenvironment{itemize}{\orig@Itemize\Nospacing}{\endlist}
\renewenvironment{enumerate}{\orig@Enumerate\Nospacing}{\endlist}
%\renewenvironment{description}{\orig@Description\Nospacing}{\endlist}

\setlength\leftmargini  {2.5em}
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi)}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii)}
\newcommand\labelenumiv{\theenumiv)}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\normalfont\bfseries \textendash}
\newcommand\labelitemii{\textbullet}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}\Nospacing}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{AbbreviationsList}
{\list{}{\labelwidth\z@ \itemindent-\leftmargin
    \let\makelabel\Abbreviationslabel}}
{\endlist}
\newcommand*\Abbreviationslabel[1]{\hspace\labelsep
  \normalfont\bfseries #1 --}                              
                              
\newenvironment{abstract}{%
    \titlepage
    \null\vfil
    \@beginparpenalty\@lowpenalty
    \begin{center}%
      \bfseries \abstractname
      \@endparpenalty\@M
    \end{center}}%
   {\par\vfil\null\endtitlepage}

\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\newenvironment{titlepage}
    { \newpage
      \thispagestyle{empty}%
      %\setcounter{page}\@ne
    }%
    {\newpage
%     \if@twoside\else
%        \setcounter{page}\@ne
%     \fi
    }
    
%% ФОРМУЛЫ
\newcommand{\eqremname}{где}
\newlength\Gost@EqRemLen
\newlength\Gost@@EqRemLen
\newenvironment{eqrem}{%
  \begin{tabular}{@{}p{\Gost@@EqRemLen}@{ }p{\Gost@EqRemLen}}
    {\eqremname}&%
  }{%
\end{tabular}
}

\AtBeginDocument{%
  \makeatletter%
  \setlength\Gost@EqRemLen{\textwidth}%
  \addtolength\Gost@EqRemLen{-10mm}%
  \settowidth\Gost@@EqRemLen{{\eqremname} }%
  \addtolength\Gost@EqRemLen{-\Gost@@EqRemLen}%
  \makeatother%
}

%% ПРИЛОЖЕНИЯ
\newcommand{\@appendixnameposition}{\hfill}
\AtBeginDocument{\renewcommand\appendixname{ПРИЛОЖЕНИЕ}}
\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapternameposition}{\@appendixnameposition}
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\russian@Alph\c@chapter}}

%% РИСУНКИ И ТАБЛИЦЫ
\AtBeginDocument{\renewcommand{\figurename}{Рисунок}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
{\@float{figure}}
{\end@float}
\newenvironment{figure*}
{\@dblfloat{figure}}
{\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
{\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
{\@float{table}}
{\end@float}
\newenvironment{table*}
{\@dblfloat{table}}
{\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{5\p@}
\setlength\belowcaptionskip{5\p@}
\def\captable{table}
\def\capfigure{figure}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \ifx\@captype\captable
  \normalfont #1 -- #2 \par
  \else
  \small \bfseries \centering #1 -- \normalsize #2
  \fi
  \vskip\belowcaptionskip}


\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}

%% Оглавление
%\RequirePackage{tocloft}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
    \chapter*{\MakeUppercase\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }

\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\newlength{\l@sectionnumwidth}
\setlength{\l@sectionnumwidth}{2.3em}
\newlength{\l@subsectionnumwidth}
\setlength{\l@subsectionnumwidth}{3.2em}
\newlength{\l@subsubsectionnumwidth}
\setlength{\l@subsubsectionnumwidth}{4.1em}

\newcommand*\l@section{\@dottedtocline{1}{0.5em}{\l@sectionnumwidth}}
\newcommand*\l@subsection{\@dottedtocline{2}{1em}{\l@subsectionnumwidth}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{1.5em}{\l@subsubsectionnumwidth}}

\newcommand\listoffigures{%
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \chapter*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure

\newcommand\Introduction{%
  \chapter*{ВВЕДЕНИЕ}
  \addcontentsline{toc}{chapter}{ВВЕДЕНИЕ}%
}

\newcommand\Abbreviations{%
  \chapter*{ПЕРЕЧЕНЬ СОКРАЩЕНИЙ И УСЛОВНЫХ ОБОЗНАЧЕНИЙ}
  \addcontentsline{toc}{chapter}{ПЕРЕЧЕНЬ СОКРАЩЕНИЙ И УСЛОВНЫХ ОБОЗНАЧЕНИЙ}%
}

%% ОБЩАЯ ХАРАКТЕРИСТИКА РАБОТЫ (п.11)
\newcommand\CharacteristicTitle{ОБЩАЯ ХАРАКТЕРИСТИКА РАБОТЫ}
\def\CharacteristicLinksTitle{Связь работы с научными программами (проектами), темами}
\def\CharacteristicTargetsTitle{Цель и задачи исследования}
\def\CharacteristicNoveltyTitle{Научная новизна}
\def\CharacteristicIdeasTitle{Положения, выносимые на защиту}
\def\CharacteristicContributionTitle{Личный вклад соискателя учёной степени}
\def\CharacteristicApprobationTitle{Апробация диссертации и информация об использовании её результатов}
\def\CharacteristicPublicationTitle{Опубликование результатов диссертации}
\def\CharacteristicStructureTitle{Структура и объём диссертации}

\newcommand\Characteristic{% Заголовок
  \if@thesis
    \chapter*\CharacteristicTitle
    \addcontentsline{toc}{chapter}\CharacteristicTitle
  \else
  \fi
}
\newcommand\CharacteristicLinks{%
  \if@thesis
    \section*\CharacteristicLinksTitle
  \else
  \fi
}
\newcommand\CharacteristicTargets{%
  \if@thesis
    \section*\CharacteristicTargetsTitle
  \else
  \fi
}
\newcommand\CharacteristicNovelty{%
  \if@thesis
    \section*\CharacteristicNoveltyTitle
  \else
  \fi
}
\newcommand\CharacteristicIdeas{%
  \if@thesis
    \section*\CharacteristicIdeasTitle
  \else
  \fi
}
\newcommand\CharacteristicContribution{%
  \if@thesis
    \section*\CharacteristicContributionTitle
  \else
  \fi
}
\newcommand\CharacteristicApprobation{%
  \if@thesis
    \section*\CharacteristicApprobationTitle
  \else
  \fi
}
\newcommand\CharacteristicPublication{%
  \if@thesis
    \section*\CharacteristicPublicationTitle
  \else
  \fi
}
\newcommand\CharacteristicStructure{%
  \if@thesis
    \section*\CharacteristicStructureTitle
  \else
  \fi
}

%% ЗАКЛЮЧЕНИЕ
\newcommand\ConclusionTitle{ЗАКЛЮЧЕНИЕ}
\newcommand\ConclusionResultsTitle{Основные научные результаты диссертации}
\newcommand\ConclusionRecomendationTitle{Рекомендации по практическому использованию результатов}
\newcommand\Conclusion{
  \chapter*\ConclusionTitle
  \addcontentsline{toc}{chapter}\ConclusionTitle
  }
\newcommand\ConclusionResults{
  \section*\ConclusionResultsTitle
  \addcontentsline{toc}{section}\ConclusionResultsTitle
  }
\newcommand\ConclusionRecomendation{
  \section*\ConclusionRecomendationTitle
  \addcontentsline{toc}{section}\ConclusionRecomendationTitle
}

%% БИБЛИОГРАФИЯ
\RequirePackage{cite}
\newcommand\BibliographyList{
  \chapter*{БИБЛИОГРАФИЧЕСКИЙ СПИСОК}
  \addcontentsline{toc}{chapter}{БИБЛИОГРАФИЧЕСКИЙ СПИСОК}%
  }
\newdimen\bibindent
\setlength\bibindent{1.5em}
\AtBeginDocument{\renewcommand{\bibname}{Список использованных источников}}
\newenvironment{thebibliography}[1]
{\section*{\bibname}%
  \addcontentsline{toc}{section}{\bibname}%
  \list{\@biblabel{\@arabic\c@enumiv}\hfill}%
  {\settowidth\labelwidth{\@biblabel{#1.}}%
    \setlength\labelsep{0em}
    \leftmargin = 0mm
    \itemindent = \leftmargin
    \advance\itemindent\parindent
    \advance\itemindent\labelwidth
    \advance\itemindent\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}
  }
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \setlength\labelsep{0.5em}
  %\renewcommand\labelenumiv{\theenumiv.}
  \endlist}

\newcommand{\mybibname}{Список публикаций соискателя учёной степени}
 \@ifpackageloaded{hyperref}{% Extension of the package hyperref
   \newcommand{\hyp@def}[1]{\hyperdef{cite}{#1}{}}
  }{
  \newcommand{\hyp@def}[1]{}}
\newenvironment{mybibliography}[1]
{\section*{\mybibname}%
  \addcontentsline{toc}{section}{\mybibname}%
  \list{\@biblabel{\@arabic\c@enumiv--A}\hfill}%
  {\settowidth\labelwidth{\@biblabel{#1--A.}}%
    \setlength\labelsep{0em}
    \leftmargin = 0mm
    \itemindent = \leftmargin
    \advance\itemindent\parindent
    \advance\itemindent\labelwidth
    \advance\itemindent\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}
    \renewcommand\bibitem[1]{\item\hyp@def{##1}\if@filesw \immediate\write\@auxout
      {\string\bibcite{##1}{\@arabic\c@enumiv--A}}\fi\ignorespaces}%
  }%end of the second argument of the \list 
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}%
{\def\@noitemerr
  {\@latex@warning{Empty `mybibliography' environment}}%
  \setlength\labelsep{0.5em}
  \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty

%%% Колонтитулы %%%
\RequirePackage{fancyhdr}
% Порядковый номер страницы печатают на середине верхнего поля страницы (п.24)
\let\ps@plain\ps@fancy              % Подчиняем первые страницы каждой главы общим правилам
\pagestyle{fancy}                   % Меняем стиль оформления страниц
\fancyhf{}                          % Очищаем текущие значения
\fancyhead[C]{\thepage}             % Печатаем номер страницы на середине верхнего поля
\renewcommand{\headrulewidth}{0pt}  % Убираем разделительную линию
\fancypagestyle{plain}{%
  \fancyhf{} % clear all header and footer fields
  \fancyhead[C]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{empty}{%
  \fancyhf{} % clear all header and footer fields
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}

\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\today{}
\edef\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\onecolumn
\RequirePackage{geometry}
\geometry{a4paper,top=2cm,bottom=2cm,left=3cm,right=1cm}
\renewcommand{\@biblabel}[1]{#1.}
\endinput
%% 
%% End of file `diserby.cls'.
