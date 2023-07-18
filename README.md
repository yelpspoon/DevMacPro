# DevMacPro
### Setup mah Macs

#### Homebrew
  - Install: 
  - Brewfile
    - brew bundle dump 
      - view to uncomment/comment files out
    - brew bundle
#### OhMyZsh
  - https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
  - https://project-awesome.org/unixorn/awesome-zsh-plugins#completions
  - brew install zsh
  - powerline fonts
    - git clone https://github.com/powerline/fonts.git --depth=1
      - cd fonts;./install.sh
      - cd ..; rm -rf fonts
    - brew tap homebrew/cask-fonts
    - brew install --cask font-inconsolata-lgc-nerd-font
  - sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  - git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
  - git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
  - git clone https://github.com/AndrewHaluza/zsh-update-plugin ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-update-plugin
    - zsh-update to update the others.
  - git clone https://github.com/chr-fritz/docker-completion.zshplugin $ZSH_CUSTOM/plugins/docker-completion (deprecated)
  - git clone https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/docker
  - git clone https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/docker
  - git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
  - git clone git@github.com:robertzk/send.zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/send
#### iTerm2
  - change font to InconsolataLGC Nerd Font
  - Profiles (pick a profile) > Text > Font InconsolataLGC Nerd Font
  - https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e?permalink_comment_id=4058108
#### Vi - Vundle
  - Vundle
    - Plugin 'VundleVim/Vundle.vim'
  - youcompleteme
    - Plugin 'valloric/youcompleteme'

  - Plugin 'hashivim/vim-terraform'
  - Plugin 'davidhalter/jedi-vim'
  - Others
    - https://www.linux.com/training-tutorials/vim-tips-using-tabs/
### Misc
#### jq
  - replace with gojq
    - ln -s /opt/homebrew/bin/gojq /opt/homebrew/bin/jq  # M1 ?
    - ln -s /usr/local/bin/gojq /usr/local/bin/jq        # Intel?
