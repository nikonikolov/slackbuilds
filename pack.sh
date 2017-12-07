#!/bin/bash
print_help(){
    echo "  Usage"
    echo "$0 <package-name>"
}

OUTPUT_DIR=Submissions

if [ $# -eq 0 ]; then
    echo "Error: No arguments provided. You must provide a package name"
    exit
else
    echo "NOTE: IGNORE THE ls OUTPUT ERRORS"
    PKG=${1%/}
    echo "$PKG"
    PATH_SRC=`ls $PKG/$PKG-*.tar.gz || ls $PKG/$PKG-*.tar.bz2 || ls $PKG/${PKG,,}-*.tar.gz || ls $PKG/${PKG,,}-*.tar.bz2`
    SRC=$(basename "$PATH_SRC")
    mv $PKG/$SRC . 
    tar -cvf $OUTPUT_DIR/$PKG.tar.gz $PKG/
    mv $SRC $PKG/
fi

