cd ../src
echo "About to configure compilation (generates Makefile)"
python configure.py
echo "About to run 'make'"
make
echo "About to run make install"
#creates nsim executable
make install 
echo "To run tests, please execute 'run-tests.sh'"
cd ../meta
