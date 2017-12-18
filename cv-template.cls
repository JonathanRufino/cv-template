\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv-template}[2017/12/16 Personal CV template class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazilian]{babel}
\RequirePackage{fontawesome}
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage[margin=2.7cm]{geometry}
\RequirePackage{hyperref}
\RequirePackage{gentium}

\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=blue,
}

\titleformat{\section}
    {\Large\bf\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\large\bf\raggedright}
    {}{0em}
    {}

\newcommand{\datedsection}[2]{%
    \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
    \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\datedurlsubsection}[3]{%
    \subsection[#1]{#1 \hfill #2 \\ {\small \url{#3}}}%
}

\newcommand{\name}[1]{
    \centerline{\Huge{\textbf{#1}}}
}

\newcommand{\address}[1]{
    {\color{gray}
        \centerline{#1}
    }
}

\newcommand{\contact}[3]{
    {\color{gray}
        \centerline{
            \faMobilePhone \space #1 \space
            {\tiny\faCircle} \space
            \faEnvelopeO \space #2 \space
            {\tiny\faCircle} \space
            \faGithub \space #3
        }
    }
}

\newcommand{\workitems}[3]{
    \begin{itemize}
        \item #1
        \item #2
        \item #3
    \end{itemize}
}