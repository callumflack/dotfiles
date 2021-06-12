# Install


Clone:

```
$ git clone https://github.com/jokeyrhyme/dotfiles.git ~/.dotfiles
```

Run the install:

```
$ ~/REPOS/dotfiles/install.sh
```

Add Homebrew:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Run the brewfile:

```
j dotfiles

brew bundle
```

## Symlinking

To create a symlink from here to the directory where they are expected (usually your home directory, ~):

```
ln -sv "~/REPOS/dotfiles/.gitconfig" ~

ln -s ~/REPOS/dotfiles/.zshrc ~/.zshrc
```

## Adding files

Open `install.sh` and append to the `files` list.

Run `brew bundle dump` and overwrite or update the Brewfile in this repo.

## References

See:

- https://medium.freecodecamp.org/dive-into-dotfiles-part-2-6321b4a73608
- https://www.notion.so/callum/Dotfiles-PATH-Homebrew-etc-8a3d46eb60ec4eaea701e4420f048479

# Todo

[] Maybe create utility scripts for syncing and bootstrapping?

[] Start using Typescript here as well?

