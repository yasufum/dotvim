# dotvim

My personal vim config files under `.vim` directory.

## How to use

### Create .vim

Clone this repository in any directory and copy it as `$HOME/.vim`.
Be aware of overwriting existing `.vim` directory.

```sh
$ cd /path/to/any
$ git clone https://github.com/yasufum/dotvim
$ cp -r dotvim $HOME/.vim
```

### Install Required Tools

It uses [vim-plugin](https://github.com/junegunn/vim-plug)
as a plugin manager and [exuberant-ctags](http://ctags.sourceforge.net/).

### .vim files

For the convenience, it's expected that basic configurations other than plugins
or lang-server's are defined in `.vim/main.vim` as an entry point.
More specifically, `:Conf` explained below opens config files
`${HOME}/.vim/main.vim` under the `${HOME}/.vim/conf/`.

`${HOME}/.vimrc` is enough to have just one line to include this main file.

```vim
" ${HOME}/.vimrc
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
