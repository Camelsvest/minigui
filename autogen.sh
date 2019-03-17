#!/bin/sh

cat m4/*.m4 > acinclude.m4
aclocal
autoheader
automake --add-missing --foreign --copy
autoconf
./configure --disable-screensaver --enable-procs --enable-debug --enable-tracemsg --enable-ttfcache --enable-ctrliconview --enable-ctrlscrollview --enable-ctrltreeview --enable-ctrlcoolbar --enable-ctrlmonthcal --with-ft2-includes=/usr/local/include CFLAGS="-g -O0"
