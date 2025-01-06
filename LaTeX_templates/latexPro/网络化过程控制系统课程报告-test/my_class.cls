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

% 图表标题格式设置
\RequirePackage{caption}
% \captionsetup[table]{labelsep=space} % 表
% \captionsetup[figure]{labelsep=space} % 图
% 去掉标题中的冒号 用空格代替
\DeclareCaptionLabelFormat{mylabel}{#1#2\hspace{1.5ex}}
\captionsetup[figure]{labelformat=mylabel,labelsep=none}
\captionsetup[table]{labelformat=mylabel,labelsep=none}

% 导入图片
\RequirePackage{graphicx, subfig}
% 防止图片乱跑
\RequirePackage{float}

% 解决参考文献中作者名之间的连接词异常问题
\RequirePackage{gbt7714}
% 可在main.tex文件中调用以下代码以设置引用文献格式
% \bibliographystyle{gbt7714-numerical}

% 加入subfigure选项避免报错
\RequirePackage[subfigure]{tocloft}
% % 在目录中section和页码之间添加引导点
% \renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
% % 目录居中
% \renewcommand*\contentsname{\hfill 目录 \hfill}
