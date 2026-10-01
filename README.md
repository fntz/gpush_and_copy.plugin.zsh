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

See example:

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
