# gpush_and_copy

`gpx` runs `git push` and copies a GitLab, GitHub, or Bitbucket request URL from the remote output to the clipboard.

## Install

```sh
git clone https://github.com/fntz/gpush_and_copy.plugin.zsh.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/gpush_and_copy
```

```zsh
plugins=(... gpush_and_copy)
```

Requires Oh My Zsh, which provides `clipcopy`.

## Usage

```sh
gpx
gpx -u origin HEAD
```

Every argument is passed through to `git push`.

### See example:

```
gpx --set-upstream origin impl
remote: 
remote: Create a pull request for 'impl' on GitHub by visiting:        
remote:      https://github.com/fntz/gpush_and_copy.plugin.zsh/pull/new/impl        
remote: 
To github.com:fntz/gpush_and_copy.plugin.zsh.git
 * [new branch]      impl -> impl
branch 'impl' set up to track 'origin/impl'.

Copied: https://github.com/fntz/gpush_and_copy.plugin.zsh/pull/new/impl
```

And voylla `Ctrl-V` contains link to MR (`https://github.com/fntz/gpush_and_copy.plugin.zsh/pull/new/impl`)


## FAQ

**Why is there sometimes no link to copy?**

The host prints it. `gpx` only copies what is already in the push output.

- **GitHub** prints a create link only on the push that creates the branch. Later pushes of that branch omit it.
- **GitLab** prints a link on every branch push (on by default). After a merge request exists, the link points at it.
- **Bitbucket Cloud** prints a create link on later pushes too, when the account option **Enable console messages** is on.
- **Bitbucket Data Center** prints a create link while the branch is new or has no pull request.

License: MIT
