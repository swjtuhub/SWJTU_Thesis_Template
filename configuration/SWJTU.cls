\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{configuration/SWJTU}[2021/8/17 Undergraduate thesis of Southwest Jiaotong University]
%%%============================载入类========================%%%
\LoadClass[zihao=-4,a4paper,twoside,fontset=none]{ctexbook}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions

%%%============================宏包载入========================%%%
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage{color,xcolor}
\RequirePackage{url}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{bm}
\RequirePackage{tikz}
\RequirePackage{xeCJKfntef}
\RequirePackage{emptypage}
\RequirePackage{xeCJK}
\RequirePackage{setspace}
\RequirePackage{subfigure}
\RequirePackage[subfigure]{tocloft}
\RequirePackage{caption}
\everymath{\displaystyle}
%%%============================字体设置========================%%%
\setmainfont{Times New Roman}
\setCJKmainfont[Path=configuration/]{simsun.ttf}
\setCJKsansfont[Path=configuration/]{simhei.ttf}
\setCJKmonofont[Path=configuration/]{simsun.ttf}
%------------------------------------------------------------------------
\setCJKfamilyfont{song}[Path=configuration/]{simsun.ttf}
\newcommand{\song}{\CJKfamily{song}}
%------------------------------------------------------------------------
\setCJKfamilyfont{kai}[Path=configuration/]{simkai.ttf}
\newcommand{\kai}{\CJKfamily{kai}}
%------------------------------------------------------------------------
\setCJKfamilyfont{hei}[Path=configuration/]{simhei.ttf}
\newcommand{\hei}{\CJKfamily{hei}}

%%%============================页面布局========================%%%
\RequirePackage{fancyhdr,hyperref}
\hypersetup{pdfencoding=auto,colorlinks=true,allcolors=black}
\RequirePackage[top=2.6truecm,bottom=2.6truecm,left=2.7truecm,right=2.7truecm,xetex]{geometry}

%%%==============================行距设置==============================%%%
\linespread{1.3}

%%%============================页眉页脚========================%%%
%----------------分隔线----------------%
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
%----------------设置非章首页的页眉页脚----------------%
\pagestyle{fancyplain}
\fancyhf{}
\fancyhead[C]{\hei \zihao{-4} 西南交通大学本科毕业设计（论文）}
\fancyfoot[C]{\hei \zihao{-4} 第\thepage 页}
%----------------设置章首页页眉页脚----------------%
\fancypagestyle{plain}
{
\fancyhf{}                                    
\fancyhead[C]{\hei \zihao{-4} 西南交通大学本科毕业设计（论文）}
\fancyfoot[C]{\hei \zihao{-4} 第\thepage 页}
}

%%%============================封面页设置========================%%%
\def\maketitle{
  \null
  \thispagestyle{empty}
  \begin{center}\leavevmode
    \par
    \vspace*{0.5cm}
    {\hei \zihao{-2}
    \text{西南交通大学}\\
    \vspace{0.5cm}
    \text{本科毕业设计（论文）}}\\
    \vspace{1.5cm}
    {\hei \zihao{2}
    碳-氮化硼纳米管超晶格的传热与力学性质研究}\\
    \vspace{1cm}
    {\hei \zihao{2}
    Research on Heat Transfer and Mechanical Properties of Carbon-Boron Nitride Nanotube Superlattices}\\
    \vspace{1cm}
    \vfill\vfill
    {\hei\zihao{-4}
    \begin{tabular}{l}
      
    \raisebox{-3ex}[0pt]{年\quad\quad 级：2018级}
    \\[3ex]
    \raisebox{-3ex}[0pt]{学\quad\quad 号：2018115237}
    \\[3ex]
    \raisebox{-3ex}[0pt]{姓\quad\quad 名：萧贺源}
    \\[3ex]
    \raisebox{-3ex}[0pt]{专\quad\quad 业：应用物理学}
    \\[3ex]
    \raisebox{-3ex}[0pt]{指导教师：倪宇翔}
    \\[3ex]
    \end{tabular}
    }
    \par
    \vspace{25mm}
    {
    {\song \zihao{-4} 二〇二二年五月 \par}
    }
    \end{center}
  }

%%%============================摘要及关键词========================%%%
\newcommand\cnabstractname{摘要} 
\newcommand\enabstractname{Abstract}
\newcommand\cnkeywords[1]{ {\noindent\hei\zihao{-4}\cnkeywordsname：}#1}
\newcommand\cnkeywordsname{关键词}
\newcommand\enkeywords[1]{ {\noindent\bfseries\zihao{-4}\enkeywordsname: \ }#1}
\newcommand\enkeywordsname{Key words}
%----------------中文摘要环境----------------%
\newenvironment{cnabstract}{
    \newpage
\chapter[\cnabstractname]{\ziju{2}{\cnabstractname}}
    \song\zihao{-4}
    \@afterheading}
    {\par}
%----------------英文摘要环境----------------%
\newenvironment{enabstract}{
    \newpage
    \chapter[\enabstractname]{\enabstractname}
    \song\zihao{-4}
    \@afterheading}
    {\par}
    
%%%=============================杂项定义============================%%%
%---------------------------自定义命令---------------------------%
\renewcommand{\contentsname}{\hei\zihao{-2}\hfill 目\qquad 录\hfill}
\renewcommand{\cftchapfont}{\hei\zihao{-4}}
\newcommand\acknowledgement{\backmatter\chapter[致谢]{\ziju{2}致谢}}
\newcommand\reseachresult{\backmatter\chapter[结论]{\ziju{2}结论}}
\newcommand{\unlink}[2]{\underline{\href{#1}{#2}}}
%---------------------------满宽度表格---------------------------%
\RequirePackage{tabularx, makecell}
\newcolumntype{L}{X}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedleft \arraybackslash}X}

%%%=============================标题设置============================%%%
%---------------------------章节标题设置---------------------------%
\ctexset{chapter={format+={\hei \zihao{-2}},number=\chinese{chapter},name={第,章},afterskip={30pt},beforeskip={20pt}}}
\ctexset{section={format+={\hei \zihao{-3}\raggedright}}}
\ctexset{subsection={format+={\hei \zihao{4}\raggedright}}}
\ctexset{subsubsection={format={\hei \zihao{-4}\bf\raggedright}}}
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}
\RequirePackage[font=small,textfont=it,labelsep=quad]{caption}
%---------------------------图表标题设置---------------------------%
\renewcommand\figurename{\song\zihao{5} 图}  
\renewcommand\tablename{\song\zihao{5} 表}
\newcommand{\chartname}[1]{\caption{\song\zihao{5} #1}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}

%%%==============================图片路径==============================%%%
\graphicspath{{figures/}}
\allowdisplaybreaks
\endlinechar `\^^M

%%%==============================参考文献==============================%%%
\usepackage[backend=biber,style=gb7714-2015, gbnamefmt=lowercase,gbstyle=false]{biblatex}
%----------------文献库导入----------------%
\addbibresource{ref.bib}

%%%=========================列表环境相关设置========================%%%
%---------------------------列表样式---------------------------%
\RequirePackage{enumerate, enumitem}
\setlist{noitemsep}

%----------------在列表环境中抑制额外的行间距----------------%
\makeatletter \setlength\partopsep{0pt}
\def\@listI{\leftmargin\leftmargini
            \parsep 0pt
            \topsep \parsep
            \itemsep \parsep}
\@listI
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiv{\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listv{\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listvi{\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
%----------------更改列表环境的默认边界----------------%
\setlength\leftmargini   {2\ccwd} \setlength\leftmarginii
{\leftmargini} \setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini} \setlength\leftmarginv
{\ccwd} \setlength\leftmarginvi  {\ccwd} \setlength\leftmargin
{\leftmargini} \setlength\labelsep      {.5\ccwd}
\setlength\labelwidth    {\leftmargini}
\setlength\listparindent{2\ccwd}
%----------------更改列表环境中条目下的段落的缩进----------------%
\def\list#1#2{\ifnum \@listdepth >5\relax \@toodeep
     \else \global\advance\@listdepth\@ne \fi
  \rightmargin \z@ \listparindent2\ccwd \itemindent \z@
  \csname @list\romannumeral\the\@listdepth\endcsname
  \def\@itemlabel{#1}\let\makelabel\@mklab \@nmbrlistfalse #2\relax
  \@trivlist
  \parskip\parsep \parindent\listparindent
  \advance\linewidth -\rightmargin \advance\linewidth -\leftmargin
  \advance\@totalleftmargin \leftmargin
  \parshape \@ne \@totalleftmargin \linewidth
  \ignorespaces}
\makeatother

\endinput

