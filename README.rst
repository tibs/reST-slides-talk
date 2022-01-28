===================================
Making slides with reStructuredText
===================================

Written as a talk for CamPUG_

History
=======

The talk was (will be) given at CamPUG_ on `Tuesday 1st February 2022`_.

.. _CamPUG: https://www.meetup.com/CamPUG/
.. _`Tuesday 1st February 2022`: https://www.meetup.com/CamPUG/events/283307340/

The slides
~~~~~~~~~~

The slides are (unsurprisingly) written using reStructuredText_, and thus
intended to be readable as plain text.

The sources for the slides are in `<rst-slides.rst>`_.

(Note that github will present the ``.rst`` files in rendered form as HTML,
albeit using their own styling (which is occasionally a bit odd). If you want
to see the original reStructuredText source, you have to click on the "Raw"
link at the top of the file's page.)

The 16x9 aspect ratio slides are `<rst-slides-16x9.pdf>`_ and are stored here
for convenience. The 4x3 aspect ratio slides are untested, and thus not uploaded.

The PDF files may not always be as up-to-date as the source files, so check
their timestamps.

A good part of the talk is made up of demonstrations of slides produced
using the different tools. At the moment those are not reproduced here...

The slides notes
~~~~~~~~~~~~~~~~

There are also notes for the slides.

The sources for the notes are in `<rst-slide-notes.rst>`_

(Note that github will present the ``.rst`` files in rendered form as HTML,
albeit using their own styling (which is occasionally a bit odd). If you want
to see the original reStructuredText source, you have to click on the "Raw"
link at the top of the file's page.)

For convenience, there will also be a PDF rendering of the notes,
`<rst-slide-notes.pdf>`_

Making the PDF files
~~~~~~~~~~~~~~~~~~~~
You can use the Makefile to create the PDF files.
For instance::

  $ make pdf

to make them all.

For what the Makefile can do, use::

  $ make help

I use poetry_ to manage the dependencies needed to build the PDFs, and
rst2pdf_ and its dependencies to do the actual work.

.. _poetry: https://python-poetry.org/
.. _rst2pdf: https://rst2pdf.org/

You will also need an appropriate ``make`` program if you want to use the
Makefile.

.. _CamPUG: https://www.meetup.com/CamPUG/
.. _reStructuredText: http://docutils.sourceforge.net/rst.html

--------

  |cc-attr-sharealike|

  This talk and its related files are released under a `Creative Commons
  Attribution-ShareAlike 4.0 International License`_.

.. |cc-attr-sharealike| image:: images/cc-attribution-sharealike-88x31.png
   :alt: CC-Attribution-ShareAlike image

.. _`Creative Commons Attribution-ShareAlike 4.0 International License`: http://creativecommons.org/licenses/by-sa/4.0/
