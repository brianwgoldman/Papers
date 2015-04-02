cat $1 |\
sed 's+Times-Bold+NimbusSanL-Bold+g' |\
sed 's+Times-Roman+NimbusSanL-Regu+g' |\
sed 's+Times+NimbusSanL-Regu+g' |\
sed 's+Helvetica-BoldOblique+NimbusSanL-BoldItal+g' |\
sed 's+Helvetica-Oblique+NimbusSanL-ReguItal+g' |\
sed 's+Helvetica-Bold+NimbusSanL-Bold+g' |\
sed 's+Helvetica-Bold-iso+NimbusSanL-Bold+g' |\
sed 's+Helvetica+NimbusSanL-Regu+g' |\
sed 's+Helvetica-iso+NimbusSanL-Regu+g' |\
sed 's+Symbol+StandardSymL+g' > $1.tmp
mv $1.tmp $1
