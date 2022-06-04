#!/usr/bin/bash

dir="MathJax-3.2.0"

cd $dir
ls -A | grep -v es5 | grep -v LICENSE | while read f; do rm -rfv $f; done

cd es5/
ls -AF | grep -v '\/' | grep -v 'tex-mml-chtml' | while read f; do rm -rfv $f; done
rm -rfv ui/

cd input/
ls -AF | grep -v 'tex\/' | while read f; do rm -rfv $f; done
cd ..

cd output/
cd chtml/fonts/
ls -AF | grep -v 'woff-v2\/' | while read f; do rm -rfv $f; done
cd ../../
ls -AF | grep -v 'chtml\/' | while read f; do rm -rfv $f; done
cd ..

rm -rfv a11y/ sre/
