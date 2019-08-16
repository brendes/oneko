#!/bin/sh

build_cmd () {
	clang -Wno-parentheses -std=c11 -pedantic -lc -lm -lX11 \
	-lXext -D_DEFAULT_SOURCE oneko.c -o oneko
}

case "$(uname)" in
	Darwin)
		LIBRARY_PATH=/opt/X11/lib:$LIBRARYPATH build_cmd
		;;
	*)
		;;
esac

