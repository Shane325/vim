<img src="https://cdn.rawgit.com/ferventcoder/chocolatey-packages/051355942d87497067ed02c1ecce9a293a9f0a63/icons/vim.svg" alt="VIM" width="150">

# Shane Barry's Vim Configuration

Here is the vim configuration that I use. This is a work in progress and will be tweaked and changed. This makes it convenient to have the same Vim configuration across multiple development machines.

The plugin manager I use is [Pathogen](https://www.vim.org/scripts/script.php?script_id=2332). You can learn more about Pathogen and install it [here](https://github.com/tpope/vim-pathogen).

I am using `git submodules` to keep all plugins synchronized. Watch [this](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) video to learn how Pathogen works with `git submodules`.

## Install locally

**Install Pathogen**

Install to '~/.vim/autoload/pathogen.vim'. Or copy and paste the following into your terminal/shell:

```bash
$ mkdir -p ~/.vim/autoload ~/.vim/bundle && \
$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

If you're using Windows, change all occurrences of `~/.vim` to `~\vimfiles`.

**Clone the repo**

```bash
$ git clone https://github.com/Shane325/vim.git ~/.vim
```

**Create symlink**

```bash
$ ln -s ~/.vim/.vimrc ~/.vimrc
```

**Initialize and update git submodules**

```bash
$ cd ~/.vim
$ git submodule init
$ git submodule update
```

## Plugins

Here are the vim plugins that are included in this repo:

- [ale](https://github.com/w0rp/ale)

    Manage the Ale configuration in .vimrc file. It is currently set up to [lint on save](https://standardjs.com/#vim). Using [Standard](https://standardjs.com/) as linting library. Install babel-eslint globally for this to work.

- [closetag](https://github.com/alvan/vim-closetag)
- [colors-solarized](https://github.com/altercation/vim-colors-solarized)
- [colorschemes](https://github.com/flazz/vim-colorschemes)
- [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
- [deus](https://github.com/ajmwagar/vim-deus)
- [devicons](https://github.com/ryanoasis/vim-devicons)
- [indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
- [javascript](https://github.com/pangloss/vim-javascript)
- [jsbeautify](https://github.com/maksimr/vim-jsbeautify)

    Complete the jsbeautify install by following the instructions [here](https://github.com/maksimr/vim-jsbeautify#installing-using-pathogen)

- [lightline](https://github.com/itchyny/lightline.vim)
- [markdown](https://github.com/plasticboy/vim-markdown)
- [MatchTag](https://github.com/gregsexton/MatchTag.git)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- [nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
- [typescript](https://github.com/leafgarland/typescript-vim.git)
- [tsuquyomi](https://github.com/Quramy/tsuquyomi.git)   
- [vimproc](https://github.com/Shougo/vimproc.vim.git)   
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe.git) 

    You must complete the YouCompleteMe install by following the instructions [here](https://github.com/Valloric/YouCompleteMe#mac-os-x)

## Installing a plugin

To install a new plugin run

```bash
$ cd ~/.vim/bundle
$ git submodule add <git-url> <name>
```

This will install the plugin in `bundle/<name>` and also update the `.gitmodules` file.

Run this command to update the git submodules

```bash
$ git submodule update
```
