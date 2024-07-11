#!/bin/bash
sudo apt-get install -y build-essential libncurses-dev clang-format zsh curl libpython3-dev

# tmux minimal
bash -c "$(curl -s https://raw.githubusercontent.com/umayr/tmux/master/init.sh)"

# oh-my-zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ~/Vim-Setting/.vimrc ~/.vimrc

# Powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#autojump
git clone https://github.com/wting/autojump.git
cd autojump
python3 ./install.py

#zsh syntax-highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#cp configs
cd ../
cp ~/Vim-Setting/.zshrc ~/.zshrc
cp ~/Vim-Setting/.p10k.zsh ~/.p10k.zsh
cp ~/Vim-Setting/.tmux.conf ~/.tmux.conf