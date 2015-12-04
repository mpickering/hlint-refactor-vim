A simple vim plugin which adds bindings for hlint's `--refactor` option.

More information can be found [here](https://github.com/mpickering/apply-refact).

# Bindings

* `to` - Apply one hint at cursor position
* `ta` - Apply all suggestions in the file

If you don't need it, add to .vimrc.

    let g:hlintRefactor#disableDefaultKeybindings = 1

