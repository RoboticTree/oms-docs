# Makefile for Sphinx documentation
# Auto-generated by OMS

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = _build
PYTHON        = python

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS)
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS)

# where to find each of the projects..
PROJECT_PATH-oms-admin = ../oms-admin/docs
PROJECT_PATH-oms-core = ../oms-core/docs
PROJECT_PATH-oms-deploy = ../oms-deploy/docs
PROJECT_PATH-oms-experimental = ../oms-experimental/docs
PROJECT_PATH-oms-kickstart = ../oms-kickstart/docs
PROJECT_PATH-oms-oidc = ../oms-oidc/docs
PROJECT_PATH-oms-salt-core = ../oms-salt-core/docs
PROJECT_PATH-oms-salt-tcf = ../oms-salt-tcf/docs
PROJECT_PATH-oms-ui = ../oms-ui/docs
PROJECT_PATH-oms-vrc = ../oms-vrc/docs
PROJECT_PATH-python-oidc = ../python-oidc/docs

help:
	@echo "Please use 'make <target>', where <target> is one of the following:"
	@echo
	@echo "  clean      to run an rm -rf on everything in the build directory"
	@echo "  oms-docs   to build the local project, oms-docs, rendered as HTML."
	@echo "  all        to build the all doc projects, rendered as HTML."
	@echo "  serve      to serve the docs to your browser via \`http://0.0.0.0:9000\`,"
	@echo "             using node.js and grunt to watch for changes and auto-reload."
	@echo "  serve-all  to serve the HTML build, using grunt to watch all doc projects,"
	@echo "             (not just oms-docs) for changes."
	@echo "  dirhtml    to make HTML files named index.html in directories"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  json       to make JSON files"
	@echo "  latex      to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  latexpdf   to make LaTeX files and run them through pdflatex"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"
	@echo
	@echo
	@echo "Note that, for each of the following repositories:"
	@echo
	@echo "  oms-admin"
	@echo "  oms-core"
	@echo "  oms-deploy"
	@echo "  oms-experimental"
	@echo "  oms-kickstart"
	@echo "  oms-oidc"
	@echo "  oms-salt-core"
	@echo "  oms-salt-tcf"
	@echo "  oms-ui"
	@echo "  oms-vrc"
	@echo "  python-oidc"
	@echo
	@echo "..each of the following targets are available:"
	@echo
	@echo "  html       to make standalone HTML files"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  json       to make JSON files"
	@echo "  text       to make text files"
	@echo "  man        to make manual pages"
	@echo "  changes    to make an overview of all changed/added/deprecated items"
	@echo "  linkcheck  to check all external links for integrity"
	@echo "  doctest    to run all doctests embedded in the documentation (if enabled)"
	@echo
	@echo
	@echo "These are available in the form: make <project>-<target>"
	@echo
	@echo "For example: make oms-core-html"
	@echo "             make oms-deploy-doctest"
	@echo "and so on..."
	@echo
	@echo
	@echo "In addition, the target 'all_docs-html' will run the HTML build for"
	@echo "the sphinx documentation projects listed when creating this Makefile."
	@echo
	@echo "(the list of projects to be built is as noted above)"
	@echo
	@echo
	@echo "The variables in this Makefile are set as follows:"
	@echo
	@echo "  PYTHON:        $(PYTHON)"
	@echo "  BUILDDIR:      $(BUILDDIR)"
	@echo "  SPHINXOPTS:    $(SPHINXOPTS)"
	@echo "  SPHINXBUILD:   $(SPHINXBUILD)"
	@echo "  ALLSPHINXOPTS: $(ALLSPHINXOPTS)"
	@echo
	@echo
	@echo "In general, you will want to either:"
	@echo
	@echo "  a) build/host oms-docs, eg: 'make oms-docs serve'"
	@echo "  b) build/host all doc projects, eg: 'make all serve-all'"
	@echo "  c) you want to clean first, eg: 'make clean all serve-all'"
	@echo "  d) build something specific, eg: 'make oms-deploy-linkcheck'"
	@echo


clean:
	rm -rf $(BUILDDIR)/*

oms-docs:
	@echo "Attempting to build the sphinx documentation project in oms-docs.."
	$(SPHINXBUILD) -b dirhtml $(ALLSPHINXOPTS) sources $(BUILDDIR)/html
	@echo
	@echo "Build finished. The documentation pages are now in $(BUILDDIR)/html."

singlehtml:
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) sources $(BUILDDIR)/singlehtml
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."

json:
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) sources $(BUILDDIR)/json
	@echo "Build finished; now you can process the JSON files."

latex:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) sources $(BUILDDIR)/latex
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
	      "(use \`make latexpdf' here to do that automatically)."

latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) sources $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

text:
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) sources $(BUILDDIR)/text
	@echo "Build finished. The text files are in $(BUILDDIR)/text."

man:
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) sources $(BUILDDIR)/man
	@echo "Build finished. The manual pages are in $(BUILDDIR)/man."

changes:
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) sources $(BUILDDIR)/changes
	@echo "The overview file is in $(BUILDDIR)/changes."

linkcheck:
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) sources $(BUILDDIR)/linkcheck
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

doctest:
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) sources $(BUILDDIR)/doctest
	@echo "Testing of doctests in the sources finished, look at the " \
	      "results in $(BUILDDIR)/doctest/output.txt."
oms-admin-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/html/oms-admin
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-admin."
oms-admin-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/singlehtml/oms-admin
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-admin."
oms-admin-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/json/oms-admin
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-admin."
oms-admin-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/text/oms-admin
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-admin."
oms-admin-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/man/oms-admin
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-admin."
oms-admin-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/changes/oms-admin
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-admin."
oms-admin-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/linkcheck/oms-admin
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-admin."
oms-admin-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-admin)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-admin) $(BUILDDIR)/doctest/oms-admin
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-admin."

clean-oms-admin:
	rm -rf $(BUILDDIR)/oms-admin/*
oms-core-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/html/oms-core
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-core."
oms-core-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/singlehtml/oms-core
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-core."
oms-core-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/json/oms-core
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-core."
oms-core-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/text/oms-core
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-core."
oms-core-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/man/oms-core
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-core."
oms-core-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/changes/oms-core
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-core."
oms-core-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/linkcheck/oms-core
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-core."
oms-core-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-core)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-core) $(BUILDDIR)/doctest/oms-core
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-core."

clean-oms-core:
	rm -rf $(BUILDDIR)/oms-core/*
oms-deploy-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/html/oms-deploy
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-deploy."
oms-deploy-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/singlehtml/oms-deploy
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-deploy."
oms-deploy-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/json/oms-deploy
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-deploy."
oms-deploy-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/text/oms-deploy
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-deploy."
oms-deploy-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/man/oms-deploy
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-deploy."
oms-deploy-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/changes/oms-deploy
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-deploy."
oms-deploy-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/linkcheck/oms-deploy
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-deploy."
oms-deploy-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-deploy)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-deploy) $(BUILDDIR)/doctest/oms-deploy
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-deploy."

clean-oms-deploy:
	rm -rf $(BUILDDIR)/oms-deploy/*
oms-experimental-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/html/oms-experimental
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-experimental."
oms-experimental-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/singlehtml/oms-experimental
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-experimental."
oms-experimental-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/json/oms-experimental
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-experimental."
oms-experimental-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/text/oms-experimental
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-experimental."
oms-experimental-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/man/oms-experimental
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-experimental."
oms-experimental-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/changes/oms-experimental
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-experimental."
oms-experimental-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/linkcheck/oms-experimental
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-experimental."
oms-experimental-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-experimental)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-experimental) $(BUILDDIR)/doctest/oms-experimental
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-experimental."

clean-oms-experimental:
	rm -rf $(BUILDDIR)/oms-experimental/*
oms-kickstart-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/html/oms-kickstart
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-kickstart."
oms-kickstart-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/singlehtml/oms-kickstart
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-kickstart."
oms-kickstart-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/json/oms-kickstart
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-kickstart."
oms-kickstart-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/text/oms-kickstart
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-kickstart."
oms-kickstart-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/man/oms-kickstart
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-kickstart."
oms-kickstart-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/changes/oms-kickstart
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-kickstart."
oms-kickstart-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/linkcheck/oms-kickstart
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-kickstart."
oms-kickstart-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-kickstart)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-kickstart) $(BUILDDIR)/doctest/oms-kickstart
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-kickstart."

clean-oms-kickstart:
	rm -rf $(BUILDDIR)/oms-kickstart/*
oms-oidc-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/html/oms-oidc
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-oidc."
oms-oidc-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/singlehtml/oms-oidc
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-oidc."
oms-oidc-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/json/oms-oidc
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-oidc."
oms-oidc-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/text/oms-oidc
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-oidc."
oms-oidc-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/man/oms-oidc
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-oidc."
oms-oidc-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/changes/oms-oidc
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-oidc."
oms-oidc-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/linkcheck/oms-oidc
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-oidc."
oms-oidc-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-oidc)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-oidc) $(BUILDDIR)/doctest/oms-oidc
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-oidc."

clean-oms-oidc:
	rm -rf $(BUILDDIR)/oms-oidc/*
oms-salt-core-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/html/oms-salt-core
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-salt-core."
oms-salt-core-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/singlehtml/oms-salt-core
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-salt-core."
oms-salt-core-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/json/oms-salt-core
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-salt-core."
oms-salt-core-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/text/oms-salt-core
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-salt-core."
oms-salt-core-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/man/oms-salt-core
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-salt-core."
oms-salt-core-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/changes/oms-salt-core
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-salt-core."
oms-salt-core-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/linkcheck/oms-salt-core
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-salt-core."
oms-salt-core-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-core)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-core) $(BUILDDIR)/doctest/oms-salt-core
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-salt-core."

clean-oms-salt-core:
	rm -rf $(BUILDDIR)/oms-salt-core/*
oms-salt-tcf-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/html/oms-salt-tcf
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-salt-tcf."
oms-salt-tcf-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/singlehtml/oms-salt-tcf
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-salt-tcf."
oms-salt-tcf-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/json/oms-salt-tcf
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-salt-tcf."
oms-salt-tcf-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/text/oms-salt-tcf
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-salt-tcf."
oms-salt-tcf-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/man/oms-salt-tcf
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-salt-tcf."
oms-salt-tcf-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/changes/oms-salt-tcf
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-salt-tcf."
oms-salt-tcf-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/linkcheck/oms-salt-tcf
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-salt-tcf."
oms-salt-tcf-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-salt-tcf)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-salt-tcf) $(BUILDDIR)/doctest/oms-salt-tcf
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-salt-tcf."

clean-oms-salt-tcf:
	rm -rf $(BUILDDIR)/oms-salt-tcf/*
oms-ui-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/html/oms-ui
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-ui."
oms-ui-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/singlehtml/oms-ui
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-ui."
oms-ui-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/json/oms-ui
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-ui."
oms-ui-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/text/oms-ui
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-ui."
oms-ui-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/man/oms-ui
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-ui."
oms-ui-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/changes/oms-ui
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-ui."
oms-ui-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/linkcheck/oms-ui
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-ui."
oms-ui-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-ui)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-ui) $(BUILDDIR)/doctest/oms-ui
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-ui."

clean-oms-ui:
	rm -rf $(BUILDDIR)/oms-ui/*
oms-vrc-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/html/oms-vrc
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/oms-vrc."
oms-vrc-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/singlehtml/oms-vrc
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/oms-vrc."
oms-vrc-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/json/oms-vrc
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/oms-vrc."
oms-vrc-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/text/oms-vrc
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/oms-vrc."
oms-vrc-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/man/oms-vrc
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/oms-vrc."
oms-vrc-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/changes/oms-vrc
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/oms-vrc."
oms-vrc-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/linkcheck/oms-vrc
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/oms-vrc."
oms-vrc-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-oms-vrc)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-oms-vrc) $(BUILDDIR)/doctest/oms-vrc
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/oms-vrc."

clean-oms-vrc:
	rm -rf $(BUILDDIR)/oms-vrc/*
python-oidc-html:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/html/python-oidc
	@echo
	@echo "Build finished. The html build artifacts are in $(BUILDDIR)/html/python-oidc."
python-oidc-singlehtml:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/singlehtml/python-oidc
	@echo
	@echo "Build finished. The singlehtml build artifacts are in $(BUILDDIR)/singlehtml/python-oidc."
python-oidc-json:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b json $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/json/python-oidc
	@echo
	@echo "Build finished. The json build artifacts are in $(BUILDDIR)/json/python-oidc."
python-oidc-text:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b text $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/text/python-oidc
	@echo
	@echo "Build finished. The text build artifacts are in $(BUILDDIR)/text/python-oidc."
python-oidc-man:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b man $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/man/python-oidc
	@echo
	@echo "Build finished. The man build artifacts are in $(BUILDDIR)/man/python-oidc."
python-oidc-changes:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b changes $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/changes/python-oidc
	@echo
	@echo "Build finished. The changes build artifacts are in $(BUILDDIR)/changes/python-oidc."
python-oidc-linkcheck:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/linkcheck/python-oidc
	@echo
	@echo "Build finished. The linkcheck build artifacts are in $(BUILDDIR)/linkcheck/python-oidc."
python-oidc-doctest:
	@echo "Attempting to build the sphinx docs in $(PROJECT_PATH-python-oidc)"
	$(SPHINXBUILD) -b doctest $(ALLSPHINXOPTS) $(PROJECT_PATH-python-oidc) $(BUILDDIR)/doctest/python-oidc
	@echo
	@echo "Build finished. The doctest build artifacts are in $(BUILDDIR)/doctest/python-oidc."

clean-python-oidc:
	rm -rf $(BUILDDIR)/python-oidc/*

all:
	@make oms-docs
	@make oms-admin-html
	@make oms-core-html
	@make oms-deploy-html
	@make oms-experimental-html
	@make oms-kickstart-html
	@make oms-oidc-html
	@make oms-salt-core-html
	@make oms-salt-tcf-html
	@make oms-ui-html
	@make oms-vrc-html
	@make python-oidc-html

serve:
	@grunt --gruntfile Gruntfile.js serve_oms_docs

serve-all:
	@grunt --gruntfile Gruntfile-all.js serve_all_docs
