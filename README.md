# dotvim

My personal vim config files under `.vim` directory.

## How to use

Clone this repository in `${HOME}/.vim` directory.

```sh
$ mkdir -p ${HOME}/.vim
$ cd ${HOME}/.vim
$ git clone DOTVIM_REPO_URL
```

For the convenience, it's expected that basic configurations other than plugins
or lang-server's are defined in `.vim/main.vim` as an entry point.
More specifically, `:Conf` explained below is able to open files
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
