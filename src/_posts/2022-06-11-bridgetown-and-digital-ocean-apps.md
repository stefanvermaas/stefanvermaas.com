---
layout: post
title: Deploy a Bridgetown site on Digital Ocean's App Platform
---

Nowadays, many cloud providers will automatically build and deploy your static site for you. While Digital Ocean supports many of the popular static site frameworks, it doesn't support automatically deploying your [Bridgetown](https://www.bridgetownrb.com) site.

However, Digital Ocean allows the use of Docker to create a custom build process. In this post, I'll walk you through the process of automatically building and deploying our Bridgetown site on Digital Ocean's App Platform.

## Using Docker for the build process

Digital Ocean currently doesn't support building static sites that use multiple programming languages. To fix this, we're going to add a `Dockerfile` that will handle the build process of your Bridgetown site for you.

Add [this Dockerfile](https://gist.github.com/stefanvermaas/99806f010ed918fcc8b0c3913f48bf04) to your app and push it to your main branch. Now, we're ready to connect our Bridgetown site to the Digital Ocean App Platform.

## Connecting to Digital Ocean

To connect your Bridgetown site to Digital Ocean, you'll need to create an app on their App Platform first.

1. Add a new app by going to "Apps" > "Create App" in your Digital Ocean account.
2. Select your "Service Provider" (e.g. Github, Gitlab, etc.).
3. Select your repository, and branch, and keep the source dir as `/`.
4. Select the "auto-deploy" feature.
5. Click "Next" to review your app.

## Finetuning Docker for the App Platform

Now, Digital Ocean will automatically try to guess what type of app you're adding. As we're both adding a `Dockerfile` and a Ruby application, Digital Ocean added two services.

To address this, edit the app and make the following changes:

1. Remove the "Ruby service" that was added.
2. Edit the "Docker service".
3. Change the "Resource Type" of the Docker service to "Static Site".
4. Change the "Output Dir" of the Docker service to `/app/output`.

Now, click on "Back" and finish the process of setting up your app. After completion, Digital Ocean will deploy your Bridgetown site to their App Platform (for free).

**NOTE:** If you've decided to name your Dockerfile `Dockerfile.deploy`, the initial deployment will fail. You'll have to update the "App Spec" for your app on Digital Ocean.

Go to "Apps" > "your-static-site" > "Settings", and change the `dockerfile_path` to `Dockerfile.deploy`. Now, trigger a rebuild of your website and you're good to go.
