#for compile from source including supporting libraries
#sudo aptitude install g++ libblas-dev libreadline-dev make m4 gawk zlib1g-dev readline-common liblapack-dev

#to compile using ubuntu's packages
echo "About to install packages required to compile Nmag"
sudo aptitude install libpetsc3.1-dev libpetsc3.1 libfindlib-ocaml-dev libqhull-dev python-tables python-ply libparmetis-dev python-dev python-py python-pyvtk
echo "About to install packages required to compile documentation"
sudo aptitude install python-sphinx dvipng texlive-latex-extra texlive-fonts-recommended