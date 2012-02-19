mkdir -p nsim-master
cd nsim-master
hg clone ssh://summer.kk.soton.ac.uk//home/hg/local/hg/nsim/master/src
hg clone ssh://summer.kk.soton.ac.uk//home/hg/local/hg/nsim/master/test
hg clone ssh://summer.kk.soton.ac.uk//home/hg/local/hg/nsim/master/doc

#also get web stuff
hg clone ssh://summer.kk.soton.ac.uk//home/hg/local/hg/nsim/www
#and distribution stuff
hg clone ssh://summer.kk.soton.ac.uk//home/hg/local/hg/nsim/dist

