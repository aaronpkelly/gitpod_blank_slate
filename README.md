# Get started

This script sets up a simple development environment within Gitpod.

Download your passwordless SSH keys to the following location:

- /workspace/gitpod_blank_slate/id_ed25519_passwordless
-/workspace/gitpod_blank_slate/id_ed25519_passwordless.pub

Then run `./setup_gitpod.sh`

# Getting git repos

Use your API to generate a list of clonable URLs:

```
api /functions/clone_all_git_sr_ht_repos | bash
```
