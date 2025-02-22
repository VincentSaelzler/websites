## Pre-Requisite Environment

Windows with WSL: Ubuntu

Visual Studio Code with Windows Extension
  + `mervin.markdown-formatter`
  + `ms-vscode-remote.remote-wsl`

## Ruby Packages and Gems

Install the APT managed version of `bundler` , then configure `bundler` to install other gems in a directory the non-root user has permissions to.

```sh
sudo apt install ruby-full build-essential zlib1g-dev ruby-bundler
```

[stackoverflow](https://stackoverflow.com/questions/16031061/force-bundler-to-install-gems-in-user-s-home-directory): *This matches where gem install --user-install puts gems on most modern operating systems*

```sh
bundle config set --local path '/home/vince/.gem'
cd /home/vince/websites
# rm Gemfile.lock
bundle install
```

# shrink photos using the photo-shrink.py script

```sh
sudo apt install imagemagick python3
```

WSL VS Code Extensions
* `streetsidesoftware.code-spell-checker`

## Clone Source

```sh
git clone https://github.com/VincentSaelzler/websites # what gui does
git submodule update --init --remote

# ...or use all-in-one command
git clone --recurse-submodules https://github.com/VincentSaelzler/websites

# then get submodules out of detached head state
git submodule foreach 'git checkout main'
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
