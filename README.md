# dotvim

My personal vim config files under `.vim` directory.

## How to use

Clone this repository on `.vim` directory.

```sh
$ mkdir -p $HOME/.vim
$ cd $HOME/.vim
$ git clone DOTVIM_REPO_URL
```

It's expected to be basic configurations are defined in `.vim/main.vim` and
`$HOME/.vimrc` has just one line to include this main file.

```vim
" $HOME/.vimrc
runtime! main.vim
```

## Custom commands

### Conf

Open config file under `.vim/conf`. The name of each file can be completed with
TAB key.

```vim
:Conf FILENAME
```

### vim-os-unittestr

Simple helper plugin for running tox unittest in OpenStack projects.

```sh
$ git clone https://github.com/yasufum/vim-os-unittestr.git
```
