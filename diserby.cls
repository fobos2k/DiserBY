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

\def\EC@family#1#2#3#4#5{%
  \DeclareFontShape{#1}{#2}{#3}{#4}%
  {<5><6><7><8><9><10><10.95><12><14.4>%
   <17.28><20.74><24.88><29.86><35.83><42.99><51.59>genb*#5}{}}
\EC@family{T1}{cmr}{m}{n}{ecrm}
\EC@family{T1}{cmr}{m}{sl}{ecsl}
\EC@family{T1}{cmr}{m}{it}{ecti}
\EC@family{T1}{cmr}{m}{sc}{eccc}
\EC@family{T1}{cmr}{bx}{n}{ecbx}
\EC@family{T1}{cmr}{b}{n}{ecrb}
\EC@family{T1}{cmr}{bx}{it}{ecbi}
\EC@family{T1}{cmr}{bx}{sl}{ecbl}
\EC@family{T1}{cmr}{bx}{sc}{ecxc}
\EC@family{T1}{cmr}{m}{ui}{ecui}
\DeclareFontShape{OT1}{cmr}{m}{n}%
     {<5><6><7><8><9><10><12>gen*cmr%
      <10.95>cmr10%
      <14.4>cmr12%
      <17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmr17}{}
\DeclareFontShape{OT1}{cmr}{m}{sl}%
     {<5><6><7>cmsl8%
      <8><9>gen*cmsl%
      <10><10.95>cmsl10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmsl12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{it}%
     {<5><6><7>cmti7%
      <8>cmti8%
      <9>cmti9%
      <10><10.95>cmti10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmti12%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{sc}%
     {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmcsc10%
      }{}
\DeclareFontShape{OT1}{cmr}{m}{ui}
   {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmu10%
      }{}
\DeclareFontShape{OT1}{cmr}{b}{n}
     {<5><6><7><8><9><10><10.95><12>%
      <14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmb10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{n}
   {<5><6><7><8><9>gen*cmbx%
      <10><10.95>cmbx10%
      <12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbx12%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{sl}
      {<5><6><7><8><9>%
      <10><10.95><12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbxsl10%
      }{}
\DeclareFontShape{OT1}{cmr}{bx}{it}
      {<5><6><7><8><9>%
      <10><10.95><12><14.4><17.28><20.74><24.88><29.86><35.83><42.99><51.59>cmbxti10%
      }{}
\input{size\@ptsize.clo}
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

\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thechapter      {\@arabic\c@chapter}
\renewcommand\thesection      {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}

\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   %{\protect \numberline {\thechapter}#1}%
                                   {\normalfont\MakeUppercase\@chapapp\space\thechapter\space\space{} #1}%
                    \else
                      \addcontentsline{toc}{chapter}{\normalfont\MakeUppercase{#1}}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \@makechapterhead{#2}%
                    \@afterheading}
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\@makeschapterhead{#1}%
                 \@afterheading}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
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
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
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
      \setcounter{page}\@ne
    }%
    {\newpage
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset{equation}{chapter}
\renewcommand\theequation{%
  \ifnum \c@chapter>\z@ \thechapter.\fi\@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand\thefigure{%
  \ifnum \c@chapter>\z@\thechapter.\fi \@arabic\c@figure}
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
\renewcommand\thetable{%
  \ifnum \c@chapter>\z@\thechapter.\fi\@arabic\c@table}
%%% Bug fix 2000-9-21  missing backslash before c@chapter. JK.
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
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
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
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
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
\def\CharacteristicTitle{ОБЩАЯ ХАРАКТЕРИСТИКА РАБОТЫ}
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

\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\chapter*{\bibname
        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\clearpage}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
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
\endinput
%% 
%% End of file `diserby.cls'.