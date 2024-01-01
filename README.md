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
- `nil`: shorthand for `npm i` with packages with `@latest` tags
- `nid`: shorthand for `npm i -D`
- `nid-eslint`: shorthand for installing ESLint configs that I commonly use
- `nidl`: shorthand for `npm i -D` with packages with `@latest` tags
- `nrl`: shorthand for `npm run lint`
- `nrd`: shorthand for `npm run dev`
- `nu`: shorthand for `npm uninstall`
- `nui`: shorthand for `npm uninstall <input> && npm i <input>`. Useful after editing a dependency and you want to undo the changes.
- `no`: shorthand for `npm outdated`
- `y`: shorthand for `yarn`
- `ya`: shorthand for `yarn add`
- `yb`: shorthand for `yarn build`
- `ys`: shorthand for `yarn start`
- `cvrc`: shorthand for [cisco-vpn-rdp-connecter](https://github.com/knutkirkhorn/cisco-vpn-rdp-connecter/) CLI
- `wn`: shorthand for [week-number](https://github.com/knutkirkhorn/week-number-cli) CLI
- `open`: alias for `explorer`. Similar to the `open` command on macOS.
- `o`: shorthand for `open`
- `gb`: git commit package files after bumping dependencies.
- `jwd`: shorthand for `jwt decode`
	- Requires [jwt-cli](https://github.com/mike-engel/jwt-cli)
- `mkdc`: Create a directory, navigate into it, initialize npm and open VS Code
- `week`: shorthand for [week-number](https://github.com/knutkirkhorn/week-number-cli)

## Uninstall

This script removes the `aliases` subdirectory from the `PATH` environment variable.

```console
uninstall.bat
```

## Related

- My [dotfiles](https://github.com/knutkirkhorn/dotfiles)
