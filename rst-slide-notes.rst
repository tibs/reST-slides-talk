========================================================
Notes for the talk "Making slides with reStructuredText"
========================================================

By Tibs / Tony Ibbs (they / he)

Presented at CamPUG_, virtually, Tuesday 1st August 2022.

Written in reStructuredText_, converted to PDF using rst2pdf_.

Slides and accompanying material at https://github.com/tibs/reST-slides-talk

|cc-attr-sharealike| These notes and the related slides are released under a
`Creative Commons Attribution-ShareAlike 4.0 International License`_.

For examples taken from previous talks, see the appropriate github repository
for the related license.

.. |cc-attr-sharealike| image:: images/cc-attribution-sharealike-88x31.png
   :alt: CC-Attribution-ShareAlike image
   :align: middle

.. _CamPUG: https://www.meetup.com/CamPUG/
.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _rst2pdf: https://rst2pdf.org/

----

Warning: this is a talk about making slides for talks, and it will have
demonstrations. So it's bound to be messy, and may go wrong!

What we shall cover
===================

...

What are the traditional things to use?
=======================================

Obviously, I'm not the best person to ask

All GUI...

* Keynote (Apple, free with Mac OS)
* Powerpoint (Microsoft, part of MS Office)
* Impress (LibreOffice, so free)
* Google Slides (part of the free Google Docs Editors suite) web based

but there are lots of other programs out there, both free and not.

Why make slides from a markup language?
=======================================

* Familiarity:

    * Editing text files. Which we mostly already know how to do.
    * Using a familiar tool, just a text editor.

* Good if you are used to typing, may be much faster to procude slides.
* Very good if you can't use a mouse or other pointing device, as it is just text.
* When generating the slides, enables one to concentrate on the content, not
  the eventual presentation / layout
* Version control
* Fits into traditional toolchains (make and the like)
* Just text files, so can search and so on

* Keeps the slides relatively simple, which can be a good thing (it often is).

  Note this doesn't mean no transitions (for instance), as that can be a
  presentation engine thing, if you really want it.

Don't ignore that "keeps things simple" point - it's very easy to go over the
top with GUI slide making tools.

Other things:

* as it's just text, can include templating and process it - also including
  things like ``cog`` to allow including actual programming examples and their
  calculated output.

Why *not* make slides from a markup language?
=============================================

* Graphics heavy slides

  If the graphics are the point of the slide, then markup, which just
  "includes" images, may not be the best, as one is working at second hand
  with the graphics

  Example: graphs with highlighting that appears or changes on successive
  slides. Using markup, these would need to be repeated (similar) images.

  (although I have done this sort of thing)

* Layout heavy slides

  Complicated layout is probably beyond what the markup is designed to
  produce. Just as one should move to another tool if reStructuredText is not
  adequate for text, the same applies for slides.

  For instance, slides which gradually reveal or hide parts of a body of
  source code, while leaving the layout the same. This can be a very useful
  effect for explaining code, but is hard to describe in something like
  reStructuredText.

  (Hmm. I wonder how hard...)

  (Also, there's the ability to do ``:hl_lines: 2 3 4`` within a ``.. code-block::``)

* Design heavy slides

  For example, if a company has a particular design that needs adhering to, or
  if close control is needed over the colour and appearance of text in
  different parts of the slide.

Just as when producing text documents, there are times when something like
reStructuredText is appropriate, and times when TeX or some form of desktop
publishing is more appropriate, sometimes one just needs Keynote to get the
job done.

Why reStructuredText?
=====================

I want to use it because it's my favourite markup, and it's what I write
without thinking. But that's hardly a good enough reason for other people.

So let's look first at why not reStructuredText:

* There are a *lot* of solutions for producing slides from markdown
* Markdown (without using HTML) is probably good for almost all slides you
  want to produce (although you may occasionally want to make sure it's a
  markdown with table support)

What do I want to put onto slides?

* Headings
* Simple lines of text
* Lists
* Code examples
* Quotations
* Tables
* Images

.. note:: Note to self: Look back over my previous slides and see what would
          have been harder to do without reStructuredText (if anything)

Tools and examples
==================

Things to talk about for each:

* what makes it interesting
* what "special" things it can do
* what format are slides (HTML, HTML and Javascript, PDF, etc.)
* how slide notes are represented (if at all)
* how code is represented (if at all), and does it use ``pygments``
* is it direct from reStructuredText to the slides, or does it go via an
  intermediate step, and does that mean installing More Stuff (I'm looking at
  TeX and LaTeX here!)
* have I used it for a talk, and if so which one(s)? (and can I still use that
  as an example?)

reStruturedText slide making tools I've used
--------------------------------------------

* rst2s5_
* landslide_
* Powerpoint / Keynote
* `hovercraft!`_
* pandoc_ with LaTex and beamer_
* rst2html5_
* rst2pdf_

.. _rst2s5: https://docutils.sourceforge.io/docs/user/slide-shows.html
.. _landslide: https://github.com/adamzap/landslide
.. _`hovercraft!`: https://hovercraft.readthedocs.io/en/latest/index.html
.. _pandoc: https://pandoc.org
.. _beamer: https://github.com/josephwright/beamer
.. _rst2html5: https://github.com/marianoguerra/rst2html5
.. _rst2pdf: https://rst2pdf.org/

the thing in docutils and suchlike
----------------------------------

Docutils: rst2s5
----------------

https://docutils.sourceforge.io/docs/user/slide-shows.html

Outputs HTML for use with S5_, a "Simple Standards-based Slide Show System" by
Eric Meyer.

.. _S5: http://meyerweb.com/eric/tools/s5/

* Good support for reStructuredText (!)
* Top level titles delimit slides
* Incremental list display
* Can enable progress display in a footer
* ``.. class:: handout`` directive for handouts (not shown in slideshow, shown
  when printing or viewing in outline mode)
* can control relative text size, colours, and various other things
* The example themes all feel a bit "heavy" to me, but at least they assume
  decent size text (**nb** check that claim)
* (Documentation by David Goodger, so it's good. And indeed, the documentation
  can *be* a slide show)

I'd forgotten how sophisticated this system actually is - now I'm feeling nostalgic!

But does it do code highlighting?

rst2slides
----------

I've never used this.

"It uses Rob Flaherty’s Lightweight `HTML5 Slideshow`_ as template, and the most
of Bruno Renie’s `HTML5Translator`_." (that last link may or may not be correct)

Demo is at https://pythonhosted.org/rst2slides/#1, demo source code at
https://pythonhosted.org/rst2slides/index.rst

.. _`HTML Slideshow`: https://www.ravelrumba.com/blog/html5-slideshow/
.. _`HTML5Translator`: https://pastebin.com/A6mMe2C5

It's on Pypi, https://pypi.org/project/rst2slides/, but the homepage link is
broken.

Doesn't support a lot of things, but does do:

* one (top level) header per slide
* incremental lists
* syntax hightlighting with pygments

rst2html5
---------

https://github.com/marianoguerra/rst2html5

    transform restructuredtext documents to html5 + twitter's bootstrap css,
    deck.js or reveal.js

* output using ``deck.js`` *or* ``reveal.js`` *or* ``impress.js`` *or*
  ``bootstrap`` *or* just as HTML

Examples of each type of output from the github page (above)


.. note:: Not to be confused with ``rst2html5`` (same name)

    https://foss.heptapod.net/doc-utils/rst2html5

    https://rst2html5.readthedocs.io/en/latest/

    "rst2html5 generates (X)HTML5 documents from standalone reStructuredText
    sources. It is a complete rewrite of the docutils’ ``rst2html`` and uses
    new HTML5 constructs such as ``<section>`` and ``<aside>``."

Landslide
---------

https://github.com/adamzap/landslide - edited in 2020

Supports Python 3

Landslide generates a slideshow using from markdown, ReST, or textile. It
builds off of Google's html5slides_ template.

.. _html5slides: https://code.google.com/archive/p/html5slides/

Using reStructuredText:

* Use ``--------`` (horizontal rule) to separate the slides
* Headings become slide title (the first heading in a slide is level 1)
* ``.. code-block:: <language>`` directive for code

Not clear how to do presenter notes in reStructuredText (if it's possible - I
don't think it is).

Main page uses markdown for examples.


Hovercraft!
-----------

https://hovercraft.readthedocs.io/en/latest/index.html

https://github.com/regebro/hovercraft - edited in 2021

.. note:: the sources for the example slideshow are on branch ``gh-pages`` at
          https://github.com/regebro/hovercraft/, that is, at
          https://github.com/regebro/hovercraft/tree/gh-pages

Demo at https://regebro.github.io/hovercraft/#/step-1 - which shows off its
features rather well.

Hovercraft! is a tool to make `impress.js`_ presentations from
reStructuredText.

    It's a presentation framework based on the power of CSS3 transforms and
    transitions in modern browsers and inspired by the idea behind prezi.com.

(transitions can be left-to-right, pan up-and-down, rotate, zoom)

.. _`impress.js`: https://github.com/impress/impress.js


Makefile::

    .PHONY: show
    show:
        echo 'Go to http://localhost:8000 to see the slides'
        hovercraft quotes.rst

runs the slideshow live from the reStructuredText

*or**::

    .PHONY: slides
    slides:
        hovercraft quotes.rst slides

to make an HTML version.

* file:///Users/tibs/Sync/30.Tibs/33.Talks/python-history/slides/index.html#/step-1



Why PDF output?
---------------

* portable and one file. So very easy to show on someone else's computer in an
  emergency (and this happens more often than one would like)
* known size - doesn't scale like a webpage

  * so known font size
  * much easier to preview, as the preview doesn't change as the window
    resizes

* prints the same as it presents

Slight snags?

* not evident how to provide "slides with notes" in the same file as "just
  slides" - this may in part be my inexpertise?

pandoc and beamer and LaTeX
---------------------------

https://pandoc.org/

https://www.overleaf.com/learn/latex/Beamer

https://www.overleaf.com/learn/latex/Beamer_Presentations%3A_A_Tutorial_for_Beginners_(Part_1)%E2%80%94Getting_Started

`A slideshow toolchain with ReST, Pandoc and LaTeX Beamer`_ by Fraser Tweedale
(video)

Dig out the other link I have to a "how to" article.

.. _`A slideshow toolchain with ReST, Pandoc and LaTeX Beamer`:
   https://talks.bfpg.org/talks/2016-03-08.a_slideshow_toolchain_with_rest_pandoc_and_latex_beamer.html

Makefile::

    markup-history-long-4x3.pdf: markup-history-long.rst
        pandoc $< -t beamer -o $@ -V aspectratio:43

    markup-history-long-16x9.pdf: markup-history-long-wide.rst
        pandoc $< -t beamer -o $@ -V aspectratio:169

Pros:

* pandoc can do reStructuredText to anything, so that's useful
* TeX is actually really good at layout

Cons:

* pandoc support for reStructuredText (for slides and so on) is not as good as
  its support for markdown
* needs TeX / LaTeX installation - can be quite big
* long tool chain - multiple points that may give errors, and they don't
  necessarily related closely to the original text
* font handling - oh my. TeX and font handling is meant to be easy, but always
  seems so awkward at the edge case (for instance, trying to use APL
  characters)


Sphinx and hieroglyph
---------------------

I've never used it.

Combine with pandoc and beamer (!)
https://edunham.net/2015/03/05/hieroglyph2beamer_with_pandoc.html

`Easy lecture slides made difficult with Pandoc and Beamer`__ (using markdown)

__ https://andrewgoldstone.com/blog/2014/12/24/slides/

rst2pdf
-------

https://rst2pdf.org/

https://github.com/rst2pdf/rst2pdf

https://www.oliverdavies.uk/talks/building-presenting-slide-decks-rst2pdf/

.. note:: Note to self: The actual repository for that page appears to be
          https://github.com/rst2pdf/rst2pdf.github.io, and not the rst2pdf
          source repository, which is where the "View on Github" at the top of
          the page links.

          That's because that's what the ``_config.yml`` says to do. Which is
          arguably correct if "View on Github" is taken to mean "View the
          project", but frustrating if one want to see the source for the web
          page. But I guess that's me being awkward.

Note that I customise my slides slightly, in particular to change the spacing
around list items, which seems a bit close in the default styles, and also to
provide a 4x3 and a 16x9 layout. There's a good bit more that could be done in
this way.

The text at rst2pdf.org acknowledges that their slide style was inspired by
that at https://github.com/akrabat/rst2pdf_example_presentation, which is
still a useful reference.

The example slide PDF (linked from rst2pdf.org) does show the "list items set
a bit close". It's also an excellent example of "always make your test bigger
than you think" - this is good advice for any slide set, and I'm not great at
it...

Problems:

* styling improvements (list spacing)
* tendency to generate an extra blank slide if text gets too near the end of a slide
* title to start new page (I think it should be possible to use ``raw:: pdf``
  directives to get round this, but it's not elegant, and I haven't made it
  work - but then I've not needed it). A more elegant solution would be nice.
  **But** slides are just a special case of normal PDF page generation.

2022-01-11
https://akrabat.com/background-images-in-rst2pdf-0-99/
"Background images and multiple styles in rst2pdf" - I should read the
`CHANGES`__

__ https://github.com/rst2pdf/rst2pdf/blob/main/CHANGES.rst#099-2022-01-08

reStructuredText incompatibilies / extensions
=============================================

Some differences in directives.

``.. code::`` (reStructuredText) or ``.. code-block::`` (sphinx) and ``..
code-block::`` (rst2pdf, not quite the same as the one from sphinx, supports
``hl_lines`` to dim the lines that are *not* listed)

How ``.. notes::`` is treated / used

How ``.. comments`` are treated / used (I *think* I remember one tool using
comments for notes? Need to check.)


Pygments or what?


-----------


--------

Links

* https://docutils.sourceforge.io/docs/user/slide-shows.html Easy Slide Shows
  With reST & S5 - Docutils
* https://rst2html5slides.readthedocs.io/ rst2html5slides - Presentations from
  restructuredtext files
* https://github.com/vitay/rst2reveal vitay/rst2reveal: ReStructuredText to
  HTML+reveal.js
* https://www.markusz.io/posts/2018/02/02/project-docs-rst-markup-sphinx/
  Project documentation with reStructuredText and Sphinx
* 2010
  https://schettino72.wordpress.com/2010/03/16/slide-presentations-in-restructuredtext-s5-pdf/
* https://github.com/regebro/hovercraft (make ``impress.js`` presentations
  with reStructuredText)
* https://github.com/adamzap/landslide - from markdown, reStructuredText or textile.
* 2009 https://ralsina.me/stories/BBS52.html - how to use rst2pdf to make slides
* 2010 http://morgangoose.com/blog/2010/09/12/using-rst-for-presentations/
  using rst2s5
* 2012 https://www.yergler.net/2012/03/13/hieroglyph/ using
  https://github.com/nyergler/hieroglyph, which is built on top of sphinx, to
  make s5 slides
* 2021
  https://www.oliverdavies.uk/blog/presenting-pdf-slides-using-pdfpc-pdf-presenter-console/
  Presenting from PDF slides using pdfpc (PDF Presenter Console) and before
  that
* https://www.oliverdavies.uk/talks/building-presenting-slide-decks-rst2pdf/
* https://github.com/impress/impress.js/wiki/Examples-and-demos - things that
  use impress, including `1G`hovercraft!``
