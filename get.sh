rm -r etc .config
mkdir -p etc/portage .config .config/vifm

cp -r /etc/portage/package.accept_keywords etc/portage
cp -r /etc/portage/package.use etc/portage
cp -r /etc/portage/package.license etc/portage
cp -r /etc/portage/package.env etc/portage
cp -r /etc/portage/env etc/portage
cp -r /etc/portage/patches etc/portage
cp -r /etc/portage/profile etc/portage

cp /etc/portage/make.conf etc/portage

cp -r ~/.config/mpv .config
cp -r ~/.config/nvim .config
cp -r ~/.config/sway .config
cp -r ~/.config/foot .config
cp -r ~/.config/pipewire .config
cp -r ~/.config/vifm/vifmrc .config/vifm
cp -r ~/.config/xdg-desktop-portal-termfilechooser .config

cp ~/.bashrc .
cp ~/.tmux.conf .
cp /var/lib/portage/world .
