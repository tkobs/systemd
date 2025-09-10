A place to store systemd files

Important: How was it done?

1. repo "systemd" created on github
2. in a folder "systemd" on the local machine 182tux following steps were performed:

    - git init
    - git add .
    - git commit -m "Initial commit to of systemd scripts"
    - git remote add origin git@github.com:tkobs/systemd.git
    - git branch -M main
    - git push -u origin main

  Explanation of last two steps:
    - git branch -M main
      This command renames your local branch.
        - git branch: This is the command to work with branches.
        - -M: This is an option that stands for "move" and "force". It renames the current branch. The -M is a shortcut that will also force the rename, even if a branch with the new name already exists.
        - main: This is the new name you are giving your branch.
        By default, when you run git init, the initial branch is often called master. However, GitHub now uses main as the default branch name for all new repositories. This command ensures your local branch name matches the one on GitHub, which prevents confusion and potential errors when you try to push your code.

    - git push -u origin main
      This command pushes your committed files from your local repository to the remote one on GitHub.
        - git push: This is the command to send your local changes to a remote repository.
        - -u: This is an option that stands for --set-upstream. This is a powerful part of the command. It  creates a connection between your local main branch and the main branch on the origin remote.
        - origin: This is the name of your remote repository. You defined this in step 477 with git remote add  origin ....
        main: This is the local branch you want to push.

After this command, future pushes can be done with a simple git push. You no longer need to specify origin main because Git remembers that your local main branch is connected to the remote main branch. This saves you typing and is the standard workflow.
