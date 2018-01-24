# ecslatex
ECS LaTeX Template reconfigured for compilation in newer versions of TeX

To use, make LaTeX files and include them in `master.tex`. Three chapters have been included as an example.

This document uses IEEE Referencing (through `IEEETran.bst`) - This is available from [here](https://www.ieee.org/conferences_events/conferences/publishing/templates.html)

This is based on the original `ecsgdp.cls`, by [Steve R Gunn](https://www.ecs.soton.ac.uk/people/srg), and which can be found [here](http://users.ecs.soton.ac.uk/srg/softwaretools/document/)

## Usage

To compile this, simply open up `master.tex` with your favourite LaTeX compiler (I use `pdflatex`) and compile.

You can edit the master BibTeX Bibliography file at `master.bib`.

Remember, as with all LaTeX stuff, if you're using a Bibliography, compile using LaTeX, then BibTeX, then LaTeX then LaTeX again (see `Makefile`) so that your references are all inserted nicely.

If you want to use the `Makefile`, simply `cd` into this repository directory and type `make`.
