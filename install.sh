cat apps.list | xargs sudo dnf -y install

#oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
ls -sf .bashrc ~/.bashrc

#cargo install alacritty

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

sudo cp fonts/JetBrainsMono-2.304/fonts/ttf/* /usr/share/fonts

fc-cache -f -v

ls -sf .bash_profile ~/.bash_profile
ln -sf .oh-my-bash/custom/* ~/.oh-my-bash/custom/
