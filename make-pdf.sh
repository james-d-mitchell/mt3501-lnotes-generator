#!/bin/bash
set -e

mkdir -p build/md build/tex build/pdf
cat content/01-intro.md | tail -n +5 > build/md/01-intro.md
arch -x86_64 pandoc build/md/01-intro.md  -s -o build/tex/01-intro.tex --verbose -V geometry:margin=2cm
cd build/tex && pdflatex 01-intro.tex && mv 01-intro.pdf ../pdf
