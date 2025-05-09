cat apps.list | xargs sudo dnf -y install

#oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
ls -sf .bashrc ~/.bashrc

cargo install alacritty

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

sudo cp fonts/JetBrainsMono/fonts/ttf/* /usr/share/fonts

fc-cache -f -v

mv ~/.bash_rc ~/.bashrc.bak
mv ~/.bash_profile ~/.bash_profile.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
mv ~/.config/nvim/ ~/.config/nvim.bak/

ln -s .bash_profile ~/.bash_profile
ln -s .oh-my-bash/custom/ ~/.oh-my-bash/custom/
ln -s .tmux.conf ~/.tmux.conf
ln -s nvim/ ~/nvim/

sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit -y

