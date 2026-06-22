<!-- SPDX-License-Identifier: GPL-3.0-or-later -->

# Setup for development

Both `rehua` and `rehua-doc` have the `devcontainer.json` file.

To use it, install Docker, VS Code and the `ms-vscode-remote.remote-containers` plugin. Then follow [these instructions](https://code.visualstudio.com/docs/devcontainers/containers#_quick-start-open-a-git-repository-or-github-pr-in-an-isolated-container-volume) to clone the repository to your local machine.

## Common commands

### Main repository

- `npm run check-all -w api -w web`: run tests on both web and api packages
- `npm run fix-all -w api -w web`: run linter and formatter fix on both web and api packages
- `npm run format` & `npm run format:fix`: run formatter on the root folder
- `npm run build:sdk -w sdk`: update sdk
- `npm run dev -w api` & `npm run dev -w web`: preview the api and web
- `npm run build -w api` & `npm run build -w web`: build the api and web

### Document repository

- `source .venv/bin/activate` & `deactivate`: activate and deactivate venv
- `mkdocs serve`: preview the doc
- `mkdocs build -s`: build the doc
