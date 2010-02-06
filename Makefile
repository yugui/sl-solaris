#==========================================
#    Makefile: makefile for sl
#	Copyright 1993,1998 Toyoda Masashi 
#		(toyoda@is.titech.ac.jp)
#	Last Modified: 1998/ 7/22
#==========================================

CC=cc
CFLAGS=-O

sl: sl.c sl.h
	$(CC) $(CFLAGS) -o sl sl.c -lcurses -ltermcap
#	$(CC) $(CFLAGS) -o sl sl.c -lcurses

install: sl
	install sl /opt/csw/bin/
	install sl.1 /opt/csw/share/man/man1/
	install sl.1ja /opt/csw/share/man/ja/man1/sl.1
package: install
	pkgmk -r / -a `uname -p`
