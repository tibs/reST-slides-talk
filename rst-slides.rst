Making slides with reStructuredText
===================================

.. class:: titleslideinfo

    By Tibs / Tony Ibbs (they / he)

    .. raw:: pdf

       Spacer 0 10

    Presented at CamPUG_, virtually, Tuesday 1st February 2022

    .. raw:: pdf

       Spacer 0 10

    Written in reStructuredText_, converted to PDF using rst2pdf_.

    .. raw:: pdf

       Spacer 0 10


    Slides and accompanying material at https://github.com/tibs/reST-slides-talk



What we shall cover
-------------------

* Traditional tools
* Why use markup (and why not)
* Why reStructuredText
* HTML versus PDF
* Tools I've used and examples
* Wrap up and recommendations

Traditional tools
-----------------

Obviously, I'm not the best person to ask

* Keynote (Apple, free with Mac OS)
* Powerpoint (Microsoft, part of MS Office)
* Impress (LibreOffice, so free)
* Google Slides (part of the free Google Docs Editors suite) web based

but there are lots of other programs out there, both free and not.

Why use markup
--------------

Familiarity
-----------

Typing text

into a text editor

Accessability
-------------

No need to use pointing devices.

Works well with speech-to-text or text-to-speech.

Content over presentation
-------------------------

Sort out the content and let the tool do much of the presentation work.

(although slides do need more thought about presentation)

Keep the design under control
-----------------------------

No need to assume the author has graphical design skills.

It's very easy to use too many "fancy" elements with a GUI tool.

Multiple tools
--------------

The same (or very similar) text can be re-used in different tools.

Slides / notes / article
------------------------

Slides, notes and articles can be from the same source.

...or at least text can be easily shared between them,

Version control
---------------

All the benefits of version control

Plus github/gitlab/etc. are a good sharing mechanism

Toolchains
----------

* Makefile, etc., to prepare the slides
* Templating to allow modification of the text
* Searchable

  (for instance, cog_ to allow insertion of code results)

.. _cog: https://github.com/nedbat/cog


Why not use markup
------------------

* If the graphics are the point of the slide

* If complicated layout is necessary

* If the company mandated style can't be reproduced

* If GUI slide making is your strong point, and typing is not

Why use reStructuredText
------------------------

* Familiarity - it's what I use for other tasks

* Sweetspot of simplicity / power

  Although slides may not need all its capabilities, and those are
  there when I do need them.

* Well defined, reasonable error handling


Why not use reStructuredText
----------------------------

There are a lot more tools for markdown.

"Readable raw markup" is not as much of an advantage for slides.

Slide markup is generally very simple.

Dedicated slide maker or general tool
-------------------------------------

Slide specific tools
--------------------
Some tools are slide specific. They tend to have specialisations for slide
making, and in particular

1. may support ``------`` as a "new slide" delimitor
2. may have slide-specific extensions to reStructuredText

This does mean that the slide text may not be parseable by other tools.

General purpose tools
---------------------
Some tools are generic, but can produce slides because slides are
just a form of document. They tend to:

1. use headings as slide delimitors
2. only understand "normal" reStructuredText (**check this!**)

This does have the advantage that the slide text can be exported in other
ways - for instance, as a simple linear document.


How slides are separated
------------------------

* Horizontal line separates slides: ``----``

  Typical for dedicated tools

* Top level title starts a new slide

  Typical for general tools.

  The document title / first slide is generally special.

Why HTML output
---------------

Allows using a browser, and taking advantage of that.

Generally includes either Javascript or HTML5 support, so allows use of
special effects developed by other slide tools.

Tools I have used
-----------------

These are the tools I've used.

* rst2s5_
* landslide_
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


Not used: Hieroglyph and Sphinx
-------------------------------

Hieroglyph_ a sphinx extension, last commit 2020

.. _Hieroglyph: https://hieroglyph.readthedocs.io/en/latest/

This might be useful if the slide sources are to be kept within an existing
sphinx directory structure.

E. Dunham's 2015 article '`hieroglyph2beamer with Pandoc`__ shows how to use
pandoc and LaTeX to get better PDF slides.

__ https://edunham.net/2015/03/05/hieroglyph2beamer_with_pandoc.html

hieroglyph characteristics
--------------------------

* generates HTML
* slides separated by titles
* all the power of sphinx
* can mix slides in with normal text
* includes its own presentation console

Not used: rst2slides
--------------------

I've never used this.

    "It uses Rob Flaherty’s Lightweight `HTML5 Slideshow`_ as template, and
    most of Bruno Renie’s `HTML5Translator`_."

.. _`HTML5 Slideshow`: https://www.ravelrumba.com/blog/html5-slideshow/
.. _`HTML5Translator`: https://pastebin.com/A6mMe2C5

rst2slides characteristics
--------------------------

* generates HTML
* slides separated by titles
* incremental lists
* syntax hightlighting with pygments

rst2slides demo
---------------

Although I've not used it, the demo is quite nice.

DEMO at https://pythonhosted.org/rst2slides/#1

The tools I have used
---------------------

rst2s5
------

Comes with Docutils

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

rst2s5 characteristics
----------------------

* slides separated by titles
* code examples don't have syntax highlighting (**check**)

rst2s5 demo
-----------

DEMO at https://docutils.sourceforge.io/docs/user/slide-shows.s5.html
is the actual documentation page as slides - perhaps a bit long.

landslide
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

landslide characteristics
-------------------------

* slides separated by
* code examples
* notes

landslide demo
--------------

DEMO at http://landslide.adamzap.com/#slide1

hovercraft!
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

hovercraft! characteristics
---------------------------

* slides separated by
* code examples
* notes

hovercraft! demo
----------------

DEMO at https://regebro.github.io/hovercraft/#/step-1

rst2html5
---------

https://github.com/marianoguerra/rst2html5

    transform restructuredtext documents to html5 + twitter's bootstrap css,
    deck.js or reveal.js

Last significant activity on the repository in 2017

General purpose tool that can has options to help with slide production.

* output using ``deck.js`` *or* ``reveal.js`` *or* ``impress.js`` *or*
  ``bootstrap`` *or* just as HTML

Examples of each type of output from the github page (above)


.. note:: Not to be confused with ``rst2html5`` (same name)

    https://foss.heptapod.net/doc-utils/rst2html5

    https://rst2html5.readthedocs.io/en/latest/

    "rst2html5 generates (X)HTML5 documents from standalone reStructuredText
    sources. It is a complete rewrite of the docutils’ ``rst2html`` and uses
    new HTML5 constructs such as ``<section>`` and ``<aside>``."

rst2html5 characteristics
-------------------------

* slides separated by
* code examples
* notes

rst2html5 demo
--------------

DEMO using revearl.js at http://marianoguerra.github.io/rst2html5/output/reveal.html#/

Why PDF?
--------

One file for a slide set.

Portable - although less of an issue now HTML, etc., support is standard.

Font size and layout on the slide is predictable.

Printed output will look like the slides.

Possible problem: support for slide notes

pandoc and beamer (and LaTeX)
-----------------------------

https://pandoc.org/

https://www.overleaf.com/learn/latex/Beamer

https://www.overleaf.com/learn/latex/Beamer_Presentations%3A_A_Tutorial_for_Beginners_(Part_1)%E2%80%94Getting_Started

`A slideshow toolchain with ReST, Pandoc and LaTeX Beamer`_ by Fraser Tweedale
(video)

Pandoc is a general purpose tool for converting between markups.

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

pandoc and beamer characteristics
---------------------------------

* slides separated by
* code examples
* notes

pandoc and beamer demo
----------------------

DEMO using my Redis talk, https://github.com/tibs/redis-talk/blob/master/redis-slides-16x9.pdf

rst2pdf
-------

https://rst2pdf.org/

https://github.com/rst2pdf/rst2pdf

General purpose tool. Slides are just another page style.

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



rst2pdf characteristics
-----------------------

* slides separated by titles
* code examples
* notes

rst2pdf demo
------------

https://rst2pdf.org/examples/presentation1/presentation1-light.pdf

and, of course, these slides.

Wrapup
------

* rst2s5_
* landslide_
* `hovercraft!`_
* pandoc_ with LaTex and beamer_
* rst2html5_
* rst2pdf_

What would I recommend?
-----------------------

For everyday usage, rst2pdf

For swoopy effects like impress, Hovercraft!

If you already have a sphinx project, then hieroglyph might be of interest.

Fin
---

Written in reStructuredText_, converted to PDF using rst2pdf_

Slides and accompanying material at https://github.com/tibs/reST-slides-talk

|cc-attr-sharealike| This slideshow and its related files are released under a
`Creative Commons Attribution-ShareAlike 4.0 International License`_.

Other slideshows demonstrated are under their own licenses.

.. |cc-attr-sharealike| image:: images/cc-attribution-sharealike-88x31.png
   :alt: CC-Attribution-ShareAlike image
   :align: middle

.. _`Creative Commons Attribution-ShareAlike 4.0 International License`: http://creativecommons.org/licenses/by-sa/4.0/

.. _CamPUG: https://www.meetup.com/CamPUG/
.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _rst2pdf: https://rst2pdf.org/
