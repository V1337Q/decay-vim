<h1 align="center">🤖Decay-Vim</h1>
<div align="center">
	<a href="https://github.com/V1337Q/">Decaycs</a>
</div> 

<p align="center">
  <a href="https://github.com/V1337Q/decay-vim/stargazers">
    <img
      alt="Stargazers"
      src="https://img.shields.io/github/stars/V1337Q/decay-vim?style=for-the-badge&logo=starship&color=78dba9&logoColor=b6beca&labelColor=1a1e24"
    >
  </a>
  <a href="https://github.com/V1337Q/decay-vim/issues">
    <img
      alt="Issues"
      src="https://img.shields.io/github/issues/V1337Q/decay-vim?style=for-the-badge&logo=gitbook&color=70a5eb&logoColor=b6beca&labelColor=1a1e24"
    >
  </a>
</p>

## Vim version of the theme Decay (base46)

### https://github.com/decaycs

## Preview

![Alt text](./assets/preview.gif)
### Custom syntax highlighting colors for C++ and certain languages.
### Custom CoC.vim colors.
### Custom ALE.vim virtual text color.

![Alt text](./assets/image1.png)
![Alt text](./assets/image2.png)

# Installation

## Vim-Plug
```sh
Plug 'V1337Q/decay-vim', { 
    \ 'do': 'ln -sf $HOME/.vim/plugged/decay-vim/autoload/airline/themes/decayvim.vim $HOME/.vim/plugged/vim-airline-themes/autoload/airline/themes/decayvim.vim' 
    \ }
```
### Then 

```vim
:PlugInstall
```

# Manual Installation

### Clone the repo
```sh
git clone https://github.com/V1337Q/decay-vim.git
```

### cd to the cloned repo
```sh
cd decay-vim
```

### Move the theme (.vim) file into ~/.vim/colors/ (If not exist, make one)
```sh
cp -r decay.vim ~/.vim/colors/
```
## Airline-theme Installation
### move the airline theme to your local vim-airline theme directory.
```sh
cp -r airline-decayvim.vim ~/.vim/plugged/vim-airline-themes/autoload/airline/themes 
" or other locations. 
```
### Set your vim-airline theme to airline-decayvim
```vim
let g:airline_theme = 'decayvim'
```

### Set colorscheme on your .vimrc
```vim
colorscheme decay
```







