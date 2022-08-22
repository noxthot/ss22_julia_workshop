<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Gregor Ehrensperger, Peter Kandolf, Jonas Kusch"
mintoclevel = 2

prepath = "ss22_julia_workshop"

hasplotly = true

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = true
website_title = "SS22 Scientific Coding with Julia"
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
~~~<button type="button" class="collapsible" style="background-color:#caffa5">~~~ Example ~~~</button><div class="collapsiblecontent">~~~ #1 ~~~</div>~~~
}
\newcommand{\exercise}[1]{
~~~<button type="button" class="collapsible" style="background-color:#b5ddff">~~~ Exercise ~~~</button><div class="collapsiblecontent">~~~ #1 ~~~</div>~~~
}
\newcommand{\collapssol}[1]{
~~~<button type="button" class="collapsible" style="background-color:#fffca5">~~~ Solution ~~~</button><div class="collapsiblecontent">~~~ #1 ~~~</div>~~~
}

\newcommand{\solution}[1]{~~~<div class="solution">~~~ Solution ~~~</div><div class="solutioncollapsible">~~~ #1 ~~~</div>~~~}

\newcommand{\figenv}[3]{
~~~
<figure style="text-align:center;">
<img src="!#2" style="padding:0;#3" alt="#1"/>
<figcaption>#1</figcaption>
</figure>
~~~
}
\newcommand{\figenvsource}[4]{
~~~
<figure style="text-align:center;">
<img src="!#2" style="padding:0;#3" alt="#1"/>
<figcaption>#1 Original source: <p style="font-size:11px"><a href="#4">#4</a></p></figcaption>
</figure>
~~~
}