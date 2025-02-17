mktemp -d #creates new dir
cd /tmp/tmp.xxxxx
cp ~/data.txt .  #copy data.txt to . dir
mv data.txt hxd  #change file name to revert hexdump
xxd -r hxd compressed  #revert hxd to binary making it easier to decompress

xxd compressed | head  #looking at the file can see "1f8b"-gzip signature => using gzip function to decompress
mv compressed compressed.gz  #change to gzip file to decompress
gzip -d compressed.gz  # "-d" to decompressed

xxd compressed  # The hex dump shows "425a"-bzip2 signature
mv compressed compressed.bz2
bzip2 -d compressed.bz2 
xxd compressed | head  # This shows data4.bin with gzip signature but we can use tar to extract the data4.bin then archive

mv compressed compressed.tar
tar -xf compressed.tar  # -x: extract, f to archive, we have data5.bin now  

xxd data5.bin | head #see data6.bin
mv data5.bin data5.tar
tar -xf data5.tar  # Now see data6.bin

xxd data6.bin | head #bzip2 signature
mv data6.bin data6.bz2
bzip2 -d data6.bz2

xxd data6 | head # data8.bin, no signature can use tar
mv data6 data6.tar
tar -xf data6.tar #extracted data8.bin

xxd data8.bin | head #gzip signature
mv data8.bin data8.gz
gzip -d data8.gz  #decompressed to data8

cat data8  # solution
