mkdir doppldist
cd doppldist
cp -r ../dist/* .
zip -r ../doppldist.zip *
cd ..
rm -rdf doppldist
