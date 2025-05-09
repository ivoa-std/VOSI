# ivoatex Makefile.  The ivoatex/README for the targets available.

# short name of your document (edit $DOCNAME.tex; would be like RegTAP)
DOCNAME = VOSI

# count up; you probably do not want to bother with versions <1.0
DOCVERSION = 1.2

# Publication date, ISO format; update manually for "releases"
DOCDATE = 2024-11-11

# What is it you're writing: NOTE, WD, PR, or REC
DOCTYPE = WD

# for push to doc repo
AUTHOR_EMAIL = pdowler.cadc@gmail.com 

# Source files for the TeX document (but the main file must always
# be called $(DOCNAME).tex
SOURCES = $(DOCNAME).tex role_diagram.pdf gitmeta.tex

# List of pixel image files to be included in submitted package 
FIGURES = role_diagram.svg

# List of PDF figures (for vector graphics)
VECTORFIGURES = 

# Additional files to distribute (e.g., CSS, schema files, examples...)
AUX_FILES = 

-include ivoatex/Makefile

ivoatex/Makefile:
	@echo "*** ivoatex submodule not found.  Initialising submodules."
	@echo
	git submodule update --init
