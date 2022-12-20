# DevMacPro
### Setup mah Macs

#### Homebrew
  - Install: 
  - Brewfile
    - brew bundle dump 
      - view to uncomment/comment files out
    - brew bundle
#### Homebrew
#### OhMyZsh
  - brew install zsh
  - brew install zsh-completions zsh-syntax-highlighting
  - powerline fonts
    - git clone https://github.com/powerline/fonts.git --depth=1
      - # install
      - cd fonts;./install.sh
      - # clean-up a bit
      - cd ..; rm -rf fonts
  - sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  - git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
#### Vi - Vundle
  - Vundle
    - Plugin 'VundleVim/Vundle.vim'
  - youcompleteme
    - Plugin 'valloric/youcompleteme'

  - Plugin 'hashivim/vim-terraform'
  - Plugin 'davidhalter/jedi-vim'
