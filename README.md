## Pre-Requisite Environment

Arch linux. SSH keys in Github. Globally installed Ruby Gems.

- minimal-mistakes-jekyll
- jekyll-feed
- erb

## Clone Source

```sh
# use all-in-one command
git clone --recurse-submodules git@github.com:VincentSaelzler/websites.git

# then get submodules out of detached head state
git submodule foreach 'git checkout main'
```

## Local Development Site

```sh
cd cookbook
jekyll serve
```

# shrink photos using the photo-shrink.py script

```sh
sudo apt install imagemagick python3
```

## Photo Import

The `photo-shrink` directory is ignored by source control.

If necessary, create directories:
* `photo-shrink/in`
* `photo-shrink/out`

To perform the shrink:
* Place full-size photos in `photo-shrink/in`
* Run `python3 ./photo-shrink.py`
* Copy small photos from `photo-shrink/out` to desired target folder.

## Jekyll Theme

https://github.com/mmistakes/minimal-mistakes

https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/
