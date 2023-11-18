#!/bin/bash

rm alpha-repository*

echo "####################################"
echo "UPDATE STARTED ++"
echo "####################################"
repo-add -s -n -R alpha-repository.db.tar.gz *.pkg.tar.zst

sleep 1

rm alpha-repository.db
rm alpha-repository.db.sig

rm alpha-repository.files
rm alpha-repository.files.sig

mv alpha-repository.db.tar.gz alpha-repository.db
mv alpha-repository.db.tar.gz.sig alpha-repository.db.sig

mv alpha-repository.files.tar.gz alpha-repository.files
mv alpha-repository.files.tar.gz.sig alpha-repository.files.sig

echo "####################################"
echo "UPDATE FINISHED!!"
echo "####################################"