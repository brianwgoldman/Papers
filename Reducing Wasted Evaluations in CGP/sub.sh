author=goldman
mkdir $author
sed -e "s,bibliography{../main},bibliography{$author},g" main.tex > $author/${author}.tex
cp ../main.bib $author/${author}.bib
cp *.eps $author
cp *.sty *.bst *.cls $author
sed -e "s,main,$author,g" Makefile > $author/Makefile
make -C $author/
make -C $author/ clean
cp authors.txt $author/
cp abstract.txt $author/
cp ${author}cr.pdf $author/
zip -9 -r ${author}.zip $author
