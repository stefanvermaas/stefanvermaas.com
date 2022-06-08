---
layout: post
title: Deploy a Bridgetown site on Digital Ocean's App Platform
---

> **TLDR;** Use this [Dockerfile and Digital Ocean configuration file](https://gist.github.com/stefanvermaas/99806f010ed918fcc8b0c3913f48bf04) to enable automatic deployments of your Bridgetown site to Digital Ocean's App Platform.

Nowadays, many cloud providers will automatically build and deploy your static site for you. While Digital Ocean supports many of the popular static site frameworks, it doesn't support automatically deploying your [Bridgetown](https://www.bridgetownrb.com) site.

However, Digital Ocean allows the use of Docker to create a custom build process. In this post, I'll walk your through the process to automatically build and deploy our Bridgetown site on Digital Ocean's App Platform.

## Using Docker for the build process

Digital Ocean currently doesn't support building static sites that use multiple programming languages. To fix this, we're going to add a `Dockerfile` that will handle the build process of your Bridgetown site for you.

Add the `Dockerfile` (see [https://gist.github.com/stefanvermaas/99806f010ed918fcc8b0c3913f48bf04](https://gist.github.com/stefanvermaas/99806f010ed918fcc8b0c3913f48bf04)) to your app and push it to your main branch. Now, we're ready to connect our Bridgetown site to the Digital Ocean App Platform.

> **NOTE:** Personally, I use Docker only for the deployment. That's why I named the Dockerfile `Dockerfile.deploy`. If you use just `Dockerfile` as the file name, you don't need an additional step. However, if you decided to use a custome file name, just like me, you'll need to walk an extra mile (see below for more).

## Connecting to Digital Ocean

To connect your Bridgetown site to Digital Ocean, you'll need to create an app on their App Platform first.

1. Add a new app by going to "Apps" > "Create App" in your Digital Ocean account.
2. Select your "Service Provider" (e.g. Github, Gitlab, etc.).
3. Select your repository, branch, and keep the source dir as `/`.
4. Select the "autodeploy" feature.
5. Click "Next" to review your app.

Now, Digital Ocean will automatically try to guess what type of app you're adding. It will falsely claim your static site is actually a "Web Servive" as we're using Ruby. To fix this, edit the app and make the following changes:

1. Change the "Resource Type" to "Static Site".
2. Change the "Output Dir" to `/app/output`.

Now, click on "Back" and finish the process of setting up your app. After completion, Digital Ocean will deploy your Bridgetown site to their App Platform (for free).

> **NOTE:** If you've decided to name your Dockerfile `Dockerfile.deploy`, the initial deployment will fail. You'll have to update the "App Spec". Go to "Apps" > "your-static-site" > "Settings", and change the `dockerfile_path` to `Dockerfile.deploy`.
