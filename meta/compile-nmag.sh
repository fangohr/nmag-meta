cd nsim-master/src
python configure.py
make
make install #creates nsim
make check
cd ../test/config
../../src/bin/nsim setup.py
cd ..
make check
echo make checkslow
echo make checkhlib
