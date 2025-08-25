# Configuration Files

## DEPENDENCIES

### Rust Development

- [Rust Analyzer](https://rust-analyzer.github.io/book/rust_analyzer_binary.html)

## SETUP

Clone the repository:

```sh
# SSH
git clone --recurse-submodules git@github.com:kfisher/configs.git ~/Config

# HTTPS
git clone --recurse-submodules https://github.com/kfisher/configs.git ~/Config
```

### VIM

```sh
ln -s ~/Config/vim ~/.vim
```

### NEOVIM

```sh
ln -s ~/Config/neovim ~/.config/nvim
```

### TMUX

```sh
ln -s ~/Config/tmux/tmux.conf ~/.tmux.conf
```

> [!warning]
> If the repo is cloned somewhere other than "~/Config", then the tmux configuration would need to
> get updated because it contains one or more paths to other config files within the tmux
> configuration directory.

## LICENSE

Unless otherwise noted, all files are licensed under the 3-clause BSD license
found in [LICENSE.md](./LICENSE.md).
