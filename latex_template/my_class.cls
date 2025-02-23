% identification
\NeedsTeXFormat{LaTeX2e} % 指定处理格式 LaTeX版本
\ProvidesClass{my_class}[2024-4-14 my class] % 对class的声明


% 加载class
% \LoadClass[UTF8]{article}
\LoadClass{article}

%% 导入所需的包
% 中文支持
\RequirePackage[UTF8]{ctex}	
% 支持代码块
\RequirePackage{listings}
\RequirePackage[dvipsnames]{xcolor}
% 代码块的基本设置
\lstset{
    breaklines,%自动换行
    columns=fixed,       
    numbers=left,                                        % 在左侧显示行号
    numberstyle=\tiny\color{gray},                       % 设定行号格式
    frame=none,                                          % 不显示背景边框
    backgroundcolor=\color[RGB]{245,245,244},            % 设定背景颜色
    keywordstyle=\color[RGB]{40,40,255},                 % 设定关键字颜色
    numberstyle=\footnotesize\color{darkgray},           
    commentstyle=\it\color[RGB]{0,96,96},                % 设置代码注释的格式
    stringstyle=\rmfamily\slshape\color[RGB]{128,0,0},   % 设置字符串格式
    showstringspaces=false,                              % 不显示字符串中的空格
    language=python,                                        % 设置语言
    basicstyle=\small                                       % 设置字体大小
}

% 设置页面的环境，a4纸张大小，左右上下边距信息
\RequirePackage[a4paper, left=31.8mm, right=31.8mm, top=25.4mm, bottom=25.4mm]{geometry}

% pdf调用 封面
\RequirePackage{pdfpages}
% 绘制三线表
\RequirePackage{booktabs}    
% 消除警告
\RequirePackage{lmodern}
% 三线表内使用单元格
\RequirePackage{makecell}

% 导入图片
\RequirePackage{caption}
\RequirePackage{graphicx, subfig}
% 防止图片乱跑
\RequirePackage{float}

% 解决参考文献中作者名之间的连接词异常问题
\RequirePackage{gbt7714}
% 可在main.tex文件中调用以下代码以设置引用文献格式
% \bibliographystyle{gbt7714-numerical}

% 插入公式
\RequirePackage{amsmath}

% 自定义有序列表
\RequirePackage{enumitem}
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 章节标题样式设置 例如“第1章”
% 靠左 阿拉伯数字 加粗
% \RequirePackage{titlesec}
% \titleformat{\section}{\Large\bfseries}{第\,\thesection\,章}{1em}{}
% % % 目录标题样式设置
% \RequirePackage{titletoc}
% \titlecontents{section}[0pt]{\addvspace{1.5pt}\filright\bf}
%                {\contentspush{第\thecontentslabel\ 章\quad}}
%                {}{\titlerule*[8pt]{.}\contentspage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 默认章节标题样式设置
% 靠左 阿拉伯数字 加粗
\RequirePackage{titlesec}
% % 目录标题样式设置
\RequirePackage{titletoc}
\titlecontents{section}[0pt]{\addvspace{1.5pt}\filright\bf}
               {\contentspush{\thecontentslabel\ \quad}}
               {}{\titlerule*[8pt]{.}\contentspage}


% 中英文摘要 自定义格式
\newcommand{\enabstractname}{Abstract}
\newcommand{\cnabstractname}{摘要}
\newenvironment{enabstract}{%
    \par %\small %设置字体为small
    \noindent\mbox{}\hfill{\bfseries\enabstractname}\hfill\mbox{}\par
    \vskip 2.5ex}{\par\vskip2.5ex}
\newenvironment{cnabstract}{%
	\par %\small %设置字体为small    
	\noindent\mbox{}\hfill{\bfseries\cnabstractname}\hfill\mbox{}\par
	\vskip 2.5ex}{\par\vskip2.5ex}

%% 以下为普通摘要格式
% % 中文摘要
% \begin{abstract}
% 	这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要这里是摘要

% 	\textbf{关键词}：关键词1，关键词2，关键词3
% \end{abstract}
% \cleardoublepage

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 设置页眉
% \RequirePackage{fancyhdr} % Headers and footers
% % \RequirePackage{lastpage}
% \pagestyle{fancy} % All pages have headers and footers
% \fancyhead{} % Blank out the default header

% %% 左右页面分别设置页眉
% % 定义奇数页（右侧页面）的左页眉
% \fancyhead[RE]{\small{IEEE TRANSACTIONS ON INDUSTRIAL ELECTRONICS, VOL. 69, NO. 2, FEBRUARY 2022}}
% % 定义偶数页（左侧页面）的右页眉
% \fancyhead[LO]{\small{JIN et al.: POLICY-BASED DRL FOR VISUAL SERVOING CONTROL OF MOBILE ROBOTS WITH VISIBILITY CONSTRAINTS}}

% % 左右页面设置统一的页眉
% % \fancyhead[C]{IEEE TRANSACTIONS ON INDUSTRIAL ELECTRONICS, VOL. 69, NO. 2, FEBRUARY 2022} % Custom header text
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 支持分栏
\RequirePackage{multicol}

\RequirePackage{flushend}
\RequirePackage{abstract}

% 插入算法伪代码
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}

% 用于实现文字环绕图片
\RequirePackage{wrapfig}  
