<!-- SPDX-License-Identifier: GPL-3.0-or-later -->

# Development environment

```mermaid
flowchart LR
    subgraph local
    FrontendDev@{img: "https://avatars.githubusercontent.com/u/202766894", label: "Frontend developer", pos: "b", w: 60, h: 60,  constraint: "on"}
    BackendDev@{img: "https://avatars.githubusercontent.com/u/166127258", label: "Backend developer", pos: "b", w: 60, h: 60,  constraint: "on"}
    Tester@{img: "https://avatars.githubusercontent.com/u/35266436", label: "Tester", pos: "b", w: 60, h: 60, constraint: "on"}

    VSCode0@{img: "https://api.iconify.design/vscode-icons:file-type-vscode.svg", w: 60, h: 60, constraint: "on"}
    VSCode1@{img: "https://api.iconify.design/vscode-icons:file-type-vscode.svg", w: 60, h: 60, constraint: "on"}

    DevContainers0@{img: "https://api.iconify.design/vscode-icons:file-type-docker.svg", w: 60, h: 60, constraint: "on"}
    DevContainers1@{img: "https://api.iconify.design/vscode-icons:file-type-docker.svg", w: 60, h: 60, constraint: "on"}

    Git0@{img: "https://api.iconify.design/vscode-icons:file-type-git.svg", w: 60, h: 60, constraint: "on"}
    Git1@{img: "https://api.iconify.design/vscode-icons:file-type-git.svg", w: 60, h: 60, constraint: "on"}

    VSCode0["VSCode
    VSCode: v1.117 or above
    Dev Containers: latest"]
    VSCode1["VSCode
    VSCode: v1.117 or above
    Dev Containers: latest"]

    DevContainers0["Dev Containers
    image: typescript-node
    Version: 24-trixie"]
    DevContainers1["Dev Containers
    image: typescript-node
    Version: 24-trixie"]

    Git0["Git
    Git: 2.53 or above"]
    Git1["Git
    Git: 2.53 or above"]

    FrontendDev -- Code on ---> VSCode0
    BackendDev -- Code on ---> VSCode1

    VSCode0 -- Run code on ---> DevContainers0
    VSCode1 -- Run code on ---> DevContainers1

    VSCode0 -- Save code to --->Git0
    VSCode1 -- Save code to --->Git1

    end

    subgraph GitHub

    PR0@{img: "https://api.iconify.design/mdi:source-pull.svg", w: 60, h: 60, constraint: "on"}

    action0@{img: "https://api.iconify.design/logos:github-actions.svg", w: 60, h: 60, constraint: "on"}

    OwnBranch0[Own Branch]
    main0["main"]
    PR0[Pull Request]
    action0[Action
    OS: ubuntu-latest
    Other: check package.json & action file]

    Git0 -- Push to ---> OwnBranch0
    Git1 -- Push to ---> OwnBranch0
    OwnBranch0 -- Create ---> PR0

    PR0 -- Run ---> action0
    PR0 -- Request review ---> Tester

    action0 -- Approve if success ---> PR0
    Tester -- Approve if no error ---> PR0

    PR0 -- Merge to if all checks pass ---> main0


    end

    subgraph Servers
        subgraph main
            MongoDB@{img: "https://api.iconify.design/vscode-icons:file-type-mongo.svg", w: 60, h: 60, constraint: "on"}
            Nginx@{img: "https://api.iconify.design/vscode-icons:file-type-nginx.svg", w: 60, h: 60, constraint: "on"}
            ZFS0@{img: "https://api.iconify.design/simple-icons:truenas.svg", w: 60, h: 60, constraint: "on"}

            FrontendService[FrontendService]
            BackendService[BackendService]
            MongoDB[MongoDB]
            Nginx[Nginx]
            ZFS0[ZFS]

            main0 -- Update code --> FrontendService
            main0 -- Update code --> BackendService
            main0 -- Update config --> MongoDB
            main0 -- Update config --> Nginx
            main0 -- Update config --> ZFS0

            FrontendService -- Get web file from --> ZFS0
            BackendService -- Get file from --> ZFS0
            MongoDB -- Get database file from --> ZFS0
            Nginx -- Get config file from --> ZFS0
        end

        subgraph backup
            ZFS1@{img: "https://api.iconify.design/simple-icons:truenas.svg", w: 60, h: 60, constraint: "on"}
            ZFS1[ZFS]

            main0 -- Update config --> ZFS1

            ZFS0 -- Backup to --> ZFS1
        end
    end
```
