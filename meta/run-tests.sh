make install #creates nsim executable
echo "Configure test-suite (assumes nsim compiled and installed)"
cd ../test/config
../../src/bin/nsim setup.py
cd ..
echo "About to run make check (quick)"
make check
echo "About to run make checkslow"
make checkslow
echo "About to run make checkmpi"
make checkmpi
#echo "About to run make checkhlib"
#echo make checkhlib
cd ../meta
echo "Hlib test not run. To do this manually, execute:"
echo "cd ../test; make checkhlib; cd ../meta"
