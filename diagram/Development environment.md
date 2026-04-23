<!-- SPDX-License-Identifier: GPL-3.0-or-later -->

# Development environment

[![Development environment diagram](https://mermaid.ink/img/pako:eNq9WFtz4jYU_isaPfQJO5iLA37odJPMbqfTtJnQ3YeFPMi2MNq1JVeSIWkm_71H8gXMZYFkJzxgWfrO_dOR4BlHIqY4wPNUrKIFkRr9eT_jCD6qCBNJ8gVKRUTScu6jFFxTHt_Q5W_PLEsCNMMLrXMVXFyQJdFEKjdhelGEhaIysmDtRiK7KC563d6l74_GgxnuoJSENDXStUYU0yVNRU6lWc6FMouhGa8C5Hc7aFE-EChVWhLGtUEIPsMvpW9XJPr-Stc83_d6l73hqOVapfDtnv1DlabybK_6w57vD_p-y6lS14892etI6cqXyTXUu7vrS85cBnJs_uTGVLGEXyyVoYZjZlUwZyl19FNOnXLaVcvkRMNrs957mi0NAxuuIamwRqV6S9ixADLIM8NuWffe03pp_xPTb4kZiHlmwGDQezeDLUZPZ7gcbc4GaOm5nneJhEQkFEvalAWt6xLA5tKwq2b4oUXWn6RxHw9BdVuiBLGMJGDBpEJFkuXa4WvzgGKCB6g3cLRkj4w2_rZZ9vN0rzkEOuHRvAPQHfbXKagdMdU_AbpzlCDHQSa5SHAYOr_WNd3u6wdw3hYVDOy-4CjahLYL0Cr0cfw-CxOypKWIFlbEJGpH7z5Uow2iqofNYQvrvxdhPX13f9L-zWIWKFHIiDp5kaZn7yESaaj_SaZSkcC5Ux5ZTimnzrb394pfScKjRXcKQ1SOKxJlIGEIZ54NsyAP0zuIDN3TfwvYWQ8tv6cf7LPSPQkQnKZcF061C8tpvaAyQNGCRt9RDpSC7eB-U1DuXyo1yPShFu1NAe8Ktahrt-H3mvBHQet3y19JwasSCVFtFLqmoV2qImsvlrEjSZeMrkpcdR1o19GAP-S5hA2H2By4FUVUqQ2b60vJFpQLRKUU8pB_t1QmlsqAJVAOm04F-azV2-qVIoc5PqFy2TSm1ootejO92SaMDIvoKRTVJEyh1iEkPXY4fdTf1JnHWP2pWs8Ztg8cbByS_WovbgVPxM3VG8xnRsMrrf-VMP74ltCN_Cttf_04OakpKZblaW1ay4Jycn5TOsC46cZvlGpqK0HAMOgkTa_aT57p-vfEAS1K_zHZUVLVflo9H_bUZmq_H3YzN4Wvh-3o7AY1W_lzHptGZM8ms3O3wj5Rqh3kMSE-Z4kVq8I5GW9DPBltgj9SVSP4iWq0oqHt-2guRbYhfLiQteQxqSrEGg4-kpAoelTOhlpLVUH9SGajwbZaaQheF_kOK7x32E_bJk8k4mb9vG24Cdqgr2xY5WFbI1upqAa4gxPJYhzMSapoB2dUgkV4x88GM8NwH8jgPmrcjumcFClc12f8BeRywr8KkWEbeQdLUSSLRk9hvb1hBLKcNbMSLFJ5LeDagQOvNxpZLTh4xo84GI_d0Xg4HnVH_cHY744HHfyEg9544HqjbrfX98b9_nA8eOng_6zZrjsaDob9Ub_vXV76_sAI0JhpIW_L_2rsXzYv_wM0foWD?type=png)](https://mermaid.ai/live/edit#pako:eNq9WFtz4jYU_isaPfQJO5iLA37odJPMbqfTtJnQ3YeFPMi2MNq1JVeSIWkm_71H8gXMZYFkJzxgWfrO_dOR4BlHIqY4wPNUrKIFkRr9eT_jCD6qCBNJ8gVKRUTScu6jFFxTHt_Q5W_PLEsCNMMLrXMVXFyQJdFEKjdhelGEhaIysmDtRiK7KC563d6l74_GgxnuoJSENDXStUYU0yVNRU6lWc6FMouhGa8C5Hc7aFE-EChVWhLGtUEIPsMvpW9XJPr-Stc83_d6l73hqOVapfDtnv1DlabybK_6w57vD_p-y6lS14892etI6cqXyTXUu7vrS85cBnJs_uTGVLGEXyyVoYZjZlUwZyl19FNOnXLaVcvkRMNrs957mi0NAxuuIamwRqV6S9ixADLIM8NuWffe03pp_xPTb4kZiHlmwGDQezeDLUZPZ7gcbc4GaOm5nneJhEQkFEvalAWt6xLA5tKwq2b4oUXWn6RxHw9BdVuiBLGMJGDBpEJFkuXa4WvzgGKCB6g3cLRkj4w2_rZZ9vN0rzkEOuHRvAPQHfbXKagdMdU_AbpzlCDHQSa5SHAYOr_WNd3u6wdw3hYVDOy-4CjahLYL0Cr0cfw-CxOypKWIFlbEJGpH7z5Uow2iqofNYQvrvxdhPX13f9L-zWIWKFHIiDp5kaZn7yESaaj_SaZSkcC5Ux5ZTimnzrb394pfScKjRXcKQ1SOKxJlIGEIZ54NsyAP0zuIDN3TfwvYWQ8tv6cf7LPSPQkQnKZcF061C8tpvaAyQNGCRt9RDpSC7eB-U1DuXyo1yPShFu1NAe8Ktahrt-H3mvBHQet3y19JwasSCVFtFLqmoV2qImsvlrEjSZeMrkpcdR1o19GAP-S5hA2H2By4FUVUqQ2b60vJFpQLRKUU8pB_t1QmlsqAJVAOm04F-azV2-qVIoc5PqFy2TSm1ootejO92SaMDIvoKRTVJEyh1iEkPXY4fdTf1JnHWP2pWs8Ztg8cbByS_WovbgVPxM3VG8xnRsMrrf-VMP74ltCN_Cttf_04OakpKZblaW1ay4Jycn5TOsC46cZvlGpqK0HAMOgkTa_aT57p-vfEAS1K_zHZUVLVflo9H_bUZmq_H3YzN4Wvh-3o7AY1W_lzHptGZM8ms3O3wj5Rqh3kMSE-Z4kVq8I5GW9DPBltgj9SVSP4iWq0oqHt-2guRbYhfLiQteQxqSrEGg4-kpAoelTOhlpLVUH9SGajwbZaaQheF_kOK7x32E_bJk8k4mb9vG24Cdqgr2xY5WFbI1upqAa4gxPJYhzMSapoB2dUgkV4x88GM8NwH8jgPmrcjumcFClc12f8BeRywr8KkWEbeQdLUSSLRk9hvb1hBLKcNbMSLFJ5LeDagQOvNxpZLTh4xo84GI_d0Xg4HnVH_cHY744HHfyEg9544HqjbrfX98b9_nA8eOng_6zZrjsaDob9Ub_vXV76_sAI0JhpIW_L_2rsXzYv_wM0foWD)

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
            FrontendService@{img: "https://api.iconify.design/tabler:brand-nextjs.svg", w: 60, h: 60, constraint: "on"}
            BackendService@{img: "https://api.iconify.design/vscode-icons:file-type-nestjs.svg", w: 60, h: 60, constraint: "on"}
            MongoDB@{img: "https://api.iconify.design/vscode-icons:file-type-mongo.svg", w: 60, h: 60, constraint: "on"}
            Nginx@{img: "https://api.iconify.design/vscode-icons:file-type-nginx.svg", w: 60, h: 60, constraint: "on"}
            ZFS0@{img: "https://api.iconify.design/simple-icons:truenas.svg", w: 60, h: 60, constraint: "on"}

            FrontendService["Frontend Service
            Next.js"]
            BackendService["Backend Service
            NestJS"]
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
