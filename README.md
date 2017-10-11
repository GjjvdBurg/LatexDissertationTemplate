Latex Dissertation Template
===========================

This is a template for a PhD dissertation created by Gertjan van den Burg. The 
template is designed to be modular and (hopefully) easy to use. This template 
is based on my PhD dissertation for the Eramus University Rotterdam, so some 
styling elements and logos will reflect this. If you end up using this 
template for your dissertation, I'd love to hear about it at 
``gertjanvandenburg@gmail.com``.

## Design

The visual design of the template is loosely based on Robert Bringhurts's [The 
Elements of Typographic 
Style](https://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style).

The LaTeX setup is constructed to make the template modular and easy to use. 
It consists of the following four main directories:

1. ``preamble``: all the LaTeX definitions, packages, and commands that are 
   defined above ``\begin{document}``.
2. ``frontmatter``: title pages, colophon, dedication page, and table of 
   contents
3. ``mainmatter``: here is where the chapters and the corresponding appendices 
   will be defined. In the template the ``blindtext`` package is used to add 
   some filler text, but this should of course be removed. Note that we use a 
   single appendix for each chapter, and that all appendices come at the end. 
   Each chapter also maintains its own ``BiBtex`` file.
4. ``backmatter``: summaries, bibliography, about the author pages, etc.

Finally, the LaTeX file that needs to be compiled is the ``dissertation.tex`` 
file, which pulls in all the separate tex files. You should only need to edit 
this file if you want to change the structure (chapter ordering, etc.) of the 
dissertation.

## Usage

- Remove the ``blindtext`` package in ``packages.tex``
- Edit the definitions in ``definitions.tex``
- Rename the chapter directories if you want

## Definitions

To keep the template organized, definitions are used for the common fields in 
the template. These can be set in the ``definitions.tex`` file in the 
``preamble`` folder.

## Notes

1. The template includes it's own ``book.cls`` so we can add a List of 
   Algorithms.
2. The template includes it's own version of ``BOONDOX-cal.sty`` because there 
   was an invalid ``filedate`` field in an earlier version.
3. The template uses its own BiBTeX style, which may or may not be what you 
   want.
