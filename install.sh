cat apps.list | xargs sudo dnf -y install

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

sudo cp fonts/JetBrainsMono-2.304/fonts/ttf/* /usr/share/fonts

fc-cache -f -v

