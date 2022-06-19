<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Gregor Ehrensperger, Peter Kandolf, Jonas Kusch"
mintoclevel = 2

prepath = "ss22_julia_workshop"

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = true
website_title = "SS22 Julia Workshop"
website_descr = "Lecture Material | Introduction to Julia"
website_url   = "https://noxthot.github.io/ss22_julia_workshop/"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}
\newcommand{\note}[1]{@@note @@title ⚠ Note@@ @@content #1 @@ @@}
\newcommand{\example}[1]{
~~~<button type="button" class="collapsible" style="background-color:#56d100">~~~ Example ~~~</button><div class="collapsiblecontent">~~~ #1 ~~~</div>~~~
}
\newcommand{\exercise}[1]{
~~~<button type="button" class="collapsible" style="background-color:#0089ff">~~~ Exercise ~~~</button><div class="collapsiblecontent">~~~ #1 ~~~</div>~~~
}