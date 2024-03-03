#!/bin/bash
site=$1

# file and directory names
sourcedir=~/websites
sourcearchive=~/websites-source.tar.gz
sitedir=$sourcedir/$site
sitefiles=$sitedir/_site
sitearchive=~/$site-site.tar.gz

# # fresh copy of source code
rm -rf $sourcedir
git clone --recurse-submodules https://github.com/VincentSaelzler/websites $sourcedir

# compressed archive of source code
tar --create --gzip --file $sourcearchive --directory $sourcedir .

# site output
cd $sitedir
bundle install
bundle exec jekyll build

# compressed archive of site output
tar --create --gzip --file $sitearchive --directory $sitefiles .

# compressed archives to blob storage
az storage blob upload --account-name saelzlerwebsites --container-name deployment --file $sourcearchive --overwrite --auth-mode login
az storage blob upload --account-name saelzlerwebsites --container-name deployment --file $sitearchive --overwrite --auth-mode login
