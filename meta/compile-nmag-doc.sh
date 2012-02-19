cd ../doc/nmag
make html
make singlehtml
make latexpdf
echo "Documentation in:"
echo ../doc/nmag/_build/html/manual.html
echo ../doc/nmag/_build/singlehtml/manual.html
echo ../doc/nmag/_build/latex/NMAGUserManual.pdf
cd ../../meta