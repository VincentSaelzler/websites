## Pre-Requisite Environment

Windows with WSL: Ubuntu

Visual Studio Code with Extensions
  + `mervin.markdown-formatter`
  + `ms-vscode-remote.remote-wsl`

## Ruby Packages and Gems

Install the APT managed version of `ruby` and `bundler` , then use `bundler` to install jekyll-specific gems at the system level.

```sh
sudo apt install ruby-full build-essential zlib1g-dev ruby-bundler
```

## Clone Source

```sh
git clone https://github.com/VincentSaelzler/websites # what gui does
git submodule update --init --remote

# ...or use all-in-one command
git clone --recurse-submodules https://github.com/VincentSaelzler/websites

# then get submodules out of detached head state
git submodule foreach 'git checkout main'
```

```sh
# just run as sudo... PLEASE
# two times now i've sunk multiple hours into trying user installs
# but paths etc. always become a problem. in case i REALLY need user
# install vs system, then don't use apt at all; install ruby (as a whole) some other way
rm Gemfile.lock
sudo bundle install
```

## Local Development Site

```sh
cd cookbook
bundle exec jekyll serve
```

# shrink photos using the photo-shrink.py script

```sh
sudo apt install imagemagick python3
```

WSL VS Code Extensions
* `streetsidesoftware.code-spell-checker`

Port forwarding happens automagically once the Jekyll web server is running.

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
