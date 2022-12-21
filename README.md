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
  - powerline fonts
    - git clone https://github.com/powerline/fonts.git --depth=1
      - # install
      - cd fonts;./install.sh
      - # clean-up a bit
      - cd ..; rm -rf fonts
    - brew tap homebrew/cask-fonts
    - brew install --cask font-hack-nerd-font
  - sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  - git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
  - git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#### iTerm2
  - change font to InconsolataLGC Nerd Font
#### Vi - Vundle
  - Vundle
    - Plugin 'VundleVim/Vundle.vim'
  - youcompleteme
    - Plugin 'valloric/youcompleteme'

  - Plugin 'hashivim/vim-terraform'
  - Plugin 'davidhalter/jedi-vim'
