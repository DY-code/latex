参考文档：https://www.latex-project.org/help/documentation/clsguide.pdf



- class和package的区分

如果这些命令可以被用于其他文档类，则应该把它们制作成package，否则为class

class后缀：.cls

package后缀：.sty





- class和package的一般结构

identification：定义文件类型（class/package），包含简短的描述

preliminary declarations：对一些命令的声明（通常用于处理options），导入其他所需文件

options：声明和处理options

more declarations：通常是文件的主体部分，完成主要的功能





- options

处理和执行options：

```latex
\ProcessOptions\relax
```



- class file必须包含的4个东西

a definition of `\normalsize`

values for `\textwidth` and `textheight`

a specification for page-numbering，页码



minimal class file 的示例：

```latex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{minimal}[2022-06-01 Standard LaTeX minimal class]
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}
\pagenumbering{arabic}
```





- 其他

避免文件名中出现空格

##### 使用class和package

在自己创建的class和package中加载其他class和package并使用它们的功能。

- 加载package：

```latex
\RequirePackage[<options>]{<package>}[<date>]
```

- 在自行创建的class中加载其他class：

```latex
\LoadClass[<options>]{<class-name>}[<date>]
```

该命令与`\documentclass`类似，它允许新创建的class可以基于其他class进行构建。

- 其他命令：


```latex
\LoadClassWithOptions{<class-name>}[<date>]
\RequirePackageWithOptions{<package>}[<date>]
```

而不要使用原始的`\input`命令

##### 自定义命令

推荐使用的命令（仅列举出一部分）

用于定义文档接口：

- `\newcommand`
- `\renewcommand`
- `\providecommand`

用于定义环境：

- `\NewDocumentEnvironment`
- `\newenvironment`

### commands for class and package writers

#### identification

- `\NeedsTeXFormat{<format-name>}[<release-date>]`

format-name：指定文件的处理格式，标准的格式名称为`LaTeX2e`

- `\ProvidesClass{<class-name>}[<release-info>]`
- `\ProvidesPackage{<package-name>}[<release-info>]`

创建class/package并提供描述

- `\ProvidesFile{<file-name>}[<release-info>]`

导入除主流class和package之外的文件

#### loading files

在已有的class和package的基础上构建自己的class/package

- `\RequirePackage[<options-list>]{<package-name>}[<release-info>]`
- `\RequirePackageWithOptions{<package-name>}[<release-info>]`

用于加载package，与`\usepackage`命令作用相同

- `\LoadClass[<options-list>]{<class-name>}[<release-info>]`
- `\LoadClassWithOptions{<class-name>}[<release-info>]`

用于加载class，只能用于class files，且最多只能使用一次；与命令`\documentclass`作用相同

#### delaying code

- `\AtEndOfClass{<code>}`
- `\AtEndOfPackage{<code>}`

上述命令中声明的`<code>`将在处理完整个文件后被执行

- `\AtBeginDocument{<code>}`
- `\AtEndDocument{<code>}`

上述命令中声明的`<code>`将在执行`\begin{document} / \end{document}`时被执行

#### creating and using keyval options

- `\DeclareKeys[<family>]{<declarations>}`

示例：

```latex
\DeclareKeys[mypkg]
{
	draft.if = @mypkg@draft,
	draft.usage = preamble,
	name.store = \@mypkg@name,
	name.usage = load,
	second-name.store = \@mypkg@other@name
}
```

- `\DeclareUnknownKeyHandler[<family>]{<code>}`

处理未定义的options

- `\ProcessKeyOptions[<family>]`

- `\SetKeys[<family>]{<keyvals>}`

#### passing options around

- `\PassOptionsToPackage{<options-list>}{<package-name>}`
- `\PassOptionsToClass{<options-list}{<class-name>}`

#### safe file commands

- `\IfFileExists{<file-name>}{<true>}{<false>}`
- `\InputIfFileExists{<file-name>}{<true>}{<false>}`

#### reporting errors, etc

- `\ClassError{<class-name>}{<error-text>}{<help-text>}`
- `\PackageError{<package-name>}{<error-text>}{<help-text>}`





