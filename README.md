# What is This?
I don't use emacs, nor have I ever used emacs. However, I feel like
it would be a good project to try to create a configurable, declarative
emacs flake!

Maybe this makes sense... maybe it doesn't because emacs can already
be configured through declarative elisp. Who knows!

# Usage
`nix run github:SamuelSehnert/emacs-flake`
or
`nix build github:SamuelSehnert/emacs-flake` to build into a `result` directory.

# Cool Things
You install all elisp packages directly with `(use-package)`.

However, if you need a runtime dependency, add the package to
```
emacsRuntimeDeps = with pkgs; [];
```
This gives emacs runtime access to the path of the package.

## Warning:
The source code, as it stands in this repo, is for testing only.
This means that there may exist debug statments, unconfigurable options,
or preconfigured options.

### Further warning:
I have absolutely no idea if the way I'm configuring emacs (in a elisp sense)
is reasonable at all!

If you have any thoughts or preferences on how to better configure/maintain
emacs, please feel free to open an issue or a PR.

# Inspiration
[Doom Emacs](https://github.com/doomemacs/doomemacs)

[Emacs From Scratch - daviwil](https://github.com/daviwil/emacs-from-scratch)

[Crafted Emacs - SystemCrafters](https://github.com/SystemCrafters/crafted-emacs)
