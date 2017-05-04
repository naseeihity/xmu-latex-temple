%!TEX program = xelatex
\ProvidesClass{xmuthesis}[2015/4/20 Xiamen University Thesis Template]
\LoadClass[a4paper,fancyhdr,hyperref,12pt,UTF8,oneside,openany]{ctexbook}
%------------------------ Page layout ----------------------------------
\hypersetup{pdfencoding=auto}
\hypersetup{citecolor=magenta,linkcolor=black}
\RequirePackage[top=2.5cm,bottom=2.0cm,left=2.5cm,right=2.0cm,includefoot,xetex]{geometry}    % 页面设置%

\setlength{\parindent}{2em}
\setlength{\parskip}{1ex plus 0.5ex minus 0.2ex}
\setmainfont{Times New Roman}

\fancypagestyle{plain}{
     \fancyhf{}
	 \fancyhead{}
	 \chead{\normalfont\small\rmfamily\nouppercase{\leftmark}} 
     \fancyfoot[C]{-\,\thepage\,-}
     \renewcommand{\headrulewidth}{0.4pt}
}


\newtoks\SchoolName					%学院
\newtoks\Department					%系
\newtoks\Major						%专业
\newtoks\Grade						%年级
\newtoks\author                     %姓名
\newtoks\StudentNumber				%学号
\newtoks\InnerAdviser				%校内指导老师
\newtoks\TitleOfInnerAdviser		%校内指导老师职称
\newtoks\OuterAdviser				%校外指导老师
\newtoks\TitleOfOuterAdviser		%校外指导老师职称
\newtoks\title
\newtoks\entitle
\newtoks\year
\newtoks\month
\newtoks\day


\newenvironment{acknowledgement}{
\newpage
	\thispagestyle{empty}
\chapter[致谢]{}
	 \@afterheading
	}
    {\par}
%------------------------ Abstract & Keywords -------------------------

\newenvironment{cnabstract}{
\newpage
	\thispagestyle{empty}
\chapter[摘要]{}
	 \@afterheading
	}
    {\par}
	
\newenvironment{enabstract}{
\newpage
	\thispagestyle{empty}
\chapter[Abstract]{}
	 \@afterheading
	}
    {\par}
%------------------------ 目录格式 -------------------------
\usepackage{titletoc}
\usepackage{titlesec}
\renewcommand\contentsname{\heiti \zihao{-3} 目录}  % 都可以
%%% ---- 章节标题设置 ----- %%%%
\CTEXsetup[titleformat+={\zihao{-3}\heiti\Arial}, name={第,章},numberformat={\zihao{-3}\heiti\Arial},nameformat={\zihao{-3}\heiti\Arial}]{chapter}
\titleformat{\section}[hang]{\zihao{4}\heiti\Arial}{\thesection}{1em}{}
\titleformat{\subsection}[hang]{\zihao{4}\heiti\Arial}{\thesubsection}{1em}{}

%% 用titletoc宏包提供的命令可以方便地设置目录的格式
\titlecontents{chapter}[0pt]{\vspace{0pt}\Arial\heiti\zihao{4}}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[2em]{\vspace{0pt}\Arial\heiti\zihao{-4}}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{subsection}[4em]{\vspace{0pt}\Roman\songti\zihao{-4}}
    {\thecontentslabel\ }{}
    {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}


				  
				  
%--------------- 新增厦大要求的Arial -------------------------
%---------------使用说明：在正文中用 \arial{} -------------------------
\newcommand\fontnamesans{Arial}%Calibri
\newfontfamily\Arial{\fontnamesans}
\newcommand{\arial}[1]{\,{\Arial#1}\,}

\newcommand\fontnameSun{Times New Roman}%Calibri
\newfontfamily\Roman{\fontnameSun}
\newcommand{\newroman}[1]{\,{\Roman#1}\,}
