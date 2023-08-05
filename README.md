# windows-aliases

> Aliases for my Windows environments

## Install

This script adds the `aliases` subdirectory to the `PATH` environment variable.

```console
install.bat
```

## Aliases

- `ns`: shorthand for `npm start`
- `nr`: shorthand for `npm run`
- `ni`: shorthand for `npm i`
- `nid`: shorthand for `npm i -D`
- `nid-eslint`: shorthand for installing ESLint configs that I commonly use
- `nrl`: shorthand for `npm run lint`
- `nrd`: shorthand for `npm run dev`
- `nu`: shorthand for `npm uninstall`
- `nui`: shorthand for `npm uninstall <input> && npm i <input>`. Useful after editing a dependency and you want to undo the changes.
- `no`: shorthand for `npm outdated`
- `cvrc`: shorthand for [cisco-vpn-rdp-connecter](https://github.com/knutkirkhorn/cisco-vpn-rdp-connecter/) CLI
- `wn`: shorthand for [week-number](https://github.com/knutkirkhorn/week-number-cli) CLI
- `open`: alias for `explorer`. Similar to the `open` command on macOS.

## Uninstall

This script removes the `aliases` subdirectory from the `PATH` environment variable.

```console
uninstall.bat
```
