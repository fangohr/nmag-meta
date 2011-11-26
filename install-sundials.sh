mkdir -p build-sundials
cd build-sundials
wget http://dl.dropbox.com/u/357850/libs/sundials-2.3.0.tar.gz
tar xfvz sundials-2.3.0.tar.gz 
cd sundials-2.3.0
./configure --prefix=/usr/local --enable-shared
make && 
echo "To install sundials in /usr/local, press return to run 'sudo make install' or CTRL+C to interrupt"
read
sudo make install


