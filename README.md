# Open Mustard Seed Documentation

The OMS docs can be viewed online at http://docs.openmustardseed.org

All source code for these docs is available in this repository. If you would
like to contribute updates or additions to the OMS documentation, please start
by reviewing the information in the rest of this README.. it will help you get
started.


## Getting Started

### Initial Setup

Please see `sources/contributing/documentation.rst` for details on installing
the dependencies for easily contributing updates to the OMS Documentation Project.


### Hacking on Docs

* Each of the .rst files under sources reflects a page on the documentation.
* Edit the `.rst` files with your favorite editor to your liking.
* Run `make docs` to build the .rst into static .html with all CSS/js/etc
  properly linked and bundled together for you..
* The rendered, static  website can now be found in the ``_build`` directory.
* We've bundled an awesome development server, with an automated workflow, as
  part of the package. See the details in the contributing documentation noted
  above, the solution is based on grunt and node.js
* To preview what you have generated run `make server` and open
  http://localhost:9000/ in your favorite browser.
* If it seems updates you have made are not taking effect, you may need to
  remove the build directory with: ``rm -rf _build``


### Documentation Conventions

Please make note of the following conventions maintained throughout oms-docs:

* Wrap all lines at 80 characters, except where a long URL overflows
* Remove additional whitespace, at end of lines, tabs in empty lines, etc. With
  vim this is as easy as running the command: ``:%s/ $//``. Git will also flag
  lines ending with white space as RED within a diff, and can even be configured
  to ignore white space when making commits.
* Convert tabs to spaces, it keeps everyone on the same page.
* Leave two empty lines between ending a section and starting a new one, as well
  as before starting a code block, and leave one empty line below a heading.
* Keep each commit focused on one type of contextual update, and linked to a
  ticket, just like with our source code.
* Follow existing/established conventions as much as possible, consistency makes
  it easy for others to get involved.
* Please refer to the section on ReST formatting and Sphinx directives included
  below.
* If you have many link references that originate from the same base URL, such
  as many sections from the same RFC document, use the ``extlinks`` sphinx
  extension.

Note that the majority of the existing conventions carry over from our existing
source code and established documentation practices within various open source
communities. Additionally, many text editors will assist in wrapping at 80
characters, provide syntax highlighting, and ensuring tabs don't sneak in to
replace spaces.


## Using Sphinx and ReST

### Sphinx and ReST Resources

* http://sphinx-doc.org
* http://matplotlib.org/sampledoc/cheatsheet.html
* http://docutils.sourceforge.net/docs/user/rst/quickstart.html

Most of us learn this stuff by reading other source, so feel free to poke around
what you see here, or in other projects as examples - django, docker, and many
others have great docs rendered with sphinx.


### Adding New Sections

A top-level section will need the following:

* a new section entry in the Table of Contents (toctree) defined in
  ``sources/toctree.rst``, such as: ``Get Started with OMS <get_started/index>``.
  `Get Started with OMS` would be added to the navigation menu as a top-level
  section, and sphinx will expect to find an ``index.rst`` in this directory.
* a new directory created under ``sources``, for example ``sources/get_started``
* create the ``index.rst``, eg: ``sources/get_started/index.rst``. If the new
  section will only have a single page, add all section content to this file.
* If the new section will have sub-sections, create each as another page within
  ``sources/get_started/`` and leave ``sources/get_started/index.rst`` with just
  a ``toctree`` directive like:

  ```
    .. toctree::
       :maxdepth: 1

       Initial Deployment <first_steps>
       Virtual Resource Controller <vrc>
       Trust Network <trust_network>
  ```

See the actual oms-docs source as existing examples.


### Headings

  ```
    Top-Level Heading
    =================

    Next Level Down
    ---------------

    Then Still Further
    ~~~~~~~~~~~~~~~~~~
  ```

See also [this bit about document and section titles and headers](http://docutils.sourceforge.net/docs/user/rst/quickstart.html#id21)


### Creating Links (Internal)

To make links to specific places _within_ the documentation, first create a link
target:

  ```
    .. _introduction:

    Introduction to ...
    ===================

    This is..
  ```

``_introduction`` is the link target and can then be referenced elsewhere in
the documentation with:

  ```

    Start with an :ref:`Introduction to OMS <introduction>` ...
  ```


### Creating Links (External)

To make _external_ links:

  ```
  Some would say that `ZeroMQ Rocks!`_

  .. _ZeroMQ Rocks!: http://zeromq.org
  ```


### Embedding Images

If embedding an image ``Trust_Framework_Features.png`` into a page within the
``introduction`` section, you would first add the image to the directory:
``sources/introduction/images/``.

Then, reference the image in your .rst document with:

  ```
  .. image:: images/Trust_Framework_Features.png
     :alt: Trusted Compute Framework Features
     :align: center
  ```

Note that only the ``.. image: path/to/image.png`` is required, the other
parameters to the image directive are optional.


### Notes, warnings, todo, etc..

Take note of how to format the text here with spacing above/below and
indentation:

  ```
  # a note (use when something is important)
  .. note::

     Include helpful notes to highlight important points the reader may
     overlook while going through the docs.


  # a warning (orange)
  .. warning::

     This will be deprecated in the next release.


  # danger (red, use sparsely)
  .. danger::


  # these will not show up in the rendered doc unless configured to do so
  .. todo::

     We need to fix these things.
  ```


### Code examples

Include code examples with:

  ```
  .. code-block:: bash

     # here is my example
     ls -alh /
  ```


And a python block may look like:

  ```
  .. code-block:: python

     print('hello world')
  ```


Code examples ought to have two spaces between the code example and the sections
above and below it.


### Tables

Tables require some-what specific formatting, but are very easy to write. There
are two styles, [detailed in this overview](http://sphinx-doc.org/rest.html#tables).

The file ``sources/tutorials/gps_demo.rst`` has a good example of a large table
that is both readable and easy to maintain.

The primary requirements are that the directive lines (the ===) match up with
the widths of text in each column.


## Editing THIS readme.md

[This guide](http://daringfireball.net/projects/markdown/syntax) it a good place
to start, but note that GitHub's *flavor* of Markdown has differences.

See [GitHub's help doc](https://help.github.com/articles/github-flavored-markdown)
for details on their version of Markdown.
