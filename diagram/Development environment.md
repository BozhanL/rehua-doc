# Development environment

```mermaid
flowchart LR
    subgraph local
    Dev
    Tester

    VSCode["VSCode
    VSCode: v1.104 or above

    Expo: 53.0.22
    @react-native-firebase: 23.2.0
    Other: check package.json"]

    AndroidStudio["Android Studio
    Android Studio: 2025.1.2
    Java: Temurin v21
    Ninja: v1.13.1"]

    Git["Git
    Git: 2.50.0 or above"]

    Dev -- Code on ---> VSCode
    VSCode -- Run code on --->AndroidStudio
    VSCode -- Save code to --->Git

    end

    subgraph GitHub
    OwnBranch[Own Branch]
    main
    PR[Pull Request]
    action[Action
    OS: ubuntu-latest
    Java: Temurin v21
    Ninja: v1.13.1
    Other: check package.json]

    Git -- Push to ---> OwnBranch
    OwnBranch -- Create ---> PR

    PR -- Run ---> action
    PR -- Request review ---> Tester

    action -- Approve if success ---> PR
    Tester -- Approve if no error ---> PR

    PR -- Merge to if all checks pass ---> main
    end
```
