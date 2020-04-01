# Woody's dotfiles - forked from /u/caarlos0

[![Build Status][tb]][tp]
[![Powered by Antibody][ab]][ap]

> Config files for ZSH, Python, Java, Ruby, Go, Editors, Terminals and more.


## Installation

### Dependencies

First, make sure you have all those things installed:
- `xcode`: required dev tool for any mac
- `git`: to clone the repo
- `curl`: to download some stuff
- `tar`: to extract downloaded stuff
- `zsh`: to actually run the dotfiles
- `sudo`: some configs may need that

### Install

Then, run these steps:

```console
$ git clone https://github.com/woodrowpearson/dotfiles-3.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./script/bootstrap
$ zsh # or just close and open your terminal again.
```

> All changed files will be backed up with a `.backup` suffix.

### Recommended Software

For macOS, I recommend a bunch of apps. Take a look at the README.md in the
sister repo: [`My MacOS Setup`](https://github.com/woodrowpearson/macOS-setup)

Many of the packages installed for mac also are available for Linux distros.

### macOS defaults
This is a bunch of changes to the default behavior of the Mac so really take
some time to make sure you want these changes applied.

You use it by running:

```console
$DOTFILES/macos/set-defaults.sh
```

And logging out and in again/restart.

### Themes and fonts being used

Theme is **[Dracula](https://draculatheme.com)** and the font is
**Source Code Pro Light**.

## Further help:

- [Personalize your configs](/docs/PERSONALIZATION.md)
