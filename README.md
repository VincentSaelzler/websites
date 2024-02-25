## Submodules
https://git-scm.com/book/en/v2/Git-Tools-Submodules
```sh
git clone --recurse-submodules https://github.com/VincentSaelzler/websites

# do this from the project's root directory!
git submodule add https://github.com/VincentSaelzler/love

```

```
warning: in the working copy of '.gitmodules', LF will be replaced by CRLF the next time Git touches it
```


## Development Environment
![](/docs/dev-containers-arch.png)

Prerequisites:
- `ms-vscode-remote.remote-containers` to run the site inside of a container.
- Docker Desktop to run the container.

The `.devcontainer` folder contains the necessary configuration files.

Once the configuration files are correct, run the project using the **Reopen in Container** command from the command palette.

## Local Development Site

When creating new containers, run this command each time. It cannot (easily) be part of the Dockerfile because the dev containers extension hasn't yet created the bind mount to the code repo, so the Gemfile doesn't exist in the container yet.
```sh
bundle install
# this warning can be safely ignored, because no other users are in the container
# Don't run Bundler as root. Installing your bundle as root will break this application for all non-root users on this machine.
```

Run this command to start the server. Do ctrl-c then rerun to see changes.
```sh
bundle exec jekyll serve
```

Port forwarding happens automagically once the Jekyll web server is running.

## Deployment
```sh
az login
./deploy.sh [sitename]
```