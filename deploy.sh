#!/bin/bash
site=$1

# file and directory names
sourcedir=~/$site
sourcefile=~/$site-source.tar.gz
sitedir=$sourcedir/_site
sitefile=~/$site-site.tar.gz

# fresh copy of source code
rm -rf $sourcedir
git clone https://github.com/VincentSaelzler/$site $sourcedir

# compressed archive of source code
tar --create --gzip --file $sourcefile --directory $sourcedir .

# site output
cd $sourcedir
bundle install
bundle exec jekyll build

# compressed archive of site output
tar --create --gzip --file $sitefile --directory $sitedir .

# compressed archives to blob storage
az storage blob upload --account-name saelzlerwebsites --container-name deployment --file $sourcefile --overwrite
az storage blob upload --account-name saelzlerwebsites --container-name deployment --file $sitefile --overwrite
