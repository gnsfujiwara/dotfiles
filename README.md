# dotfiles

My personal dotfiles that should be used by me but might be useful to someone else.

## Management

I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles, make sure you have it installed.

## Usage

GNU Stow is basically a symlink manager, each set of configuration files is installed in your home directory based on the file structure in each package.

- Install package:

`stow <package-name>`

- Delete package:

`stow --delete <package-name>`

## License

[The Unlicense](./UNLICENSE)
