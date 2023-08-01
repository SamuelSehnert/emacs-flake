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
First, you actually configure this flake with the init.el file. Anytime you want
to inject a nix built package (say python3 for example), you can use
`$pkgs.python3$` as the binary path in the lisp file within a lisp comment with
some special characters. See below:

```elisp
;#NIX(setq python-bin "$pkgs.python3$");#
```

Upon compilation of this flake, Nix will read default.el, and find-replace all `#!#`
surrounded strings with the respective package. This way of going about this allows
for emacs to still use the LSP/syntax highlighting/etc for lisp, while using the
package management power of Nix!

Furthermore, since all the injected nix paths occur in elisp comments,
you can still edit and change the init.el file inside emacs, and have emacs
evaluate the buffer and apply the changes!

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
