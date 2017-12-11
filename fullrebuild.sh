if [[ $# -eq 0 ]] ; then
    echo "No arguments. Doppl version needed."
    exit 1
fi

rm -rdf dist-release

export J2OBJC_VERSION=$1-release-doppl
export DEBUGGING_SYMBOLS=NO
export OPTIMIZATION_LEVEL=s

make clean
make -j8 frameworks

mv dist dist-release

export J2OBJC_VERSION=$1-debug-doppl
export DEBUGGING_SYMBOLS=YES
export OPTIMIZATION_LEVEL=0

make clean
make -j8 frameworks

