## Pre-Requisite Environment

Windows with WSL: Ubuntu

Visual Studio Code with Windows Extension
  + `mervin.markdown-formatter`
  + `ms-vscode-remote.remote-wsl`

## Project-Specific Development Environment

```sh
# bundler-based versioning and dependency management
sudo apt install ruby-full build-essential zlib1g-dev
sudo gem install bundler
# shrink photos using the photo-shrink.py script
sudo apt install imagemagick python3
```

WSL VS Code Extensions
* `streetsidesoftware.code-spell-checker`

## Clone Source

### Option: GUI

```sh
# use vscode clone repository dialog, then...
git submodule update --init --remote
git submodule foreach 'git checkout main'
```

### Option: CLI

```sh
git clone --recurse-submodules https://github.com/VincentSaelzler/websites
# ... then?
```

## Local Development Site

```sh
cd cookbook
sudo bundle install
# there will be warnings about running bundler as root.
# haven't figured out how to run/install bundler as a non-root user
bundle exec jekyll serve
```

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
