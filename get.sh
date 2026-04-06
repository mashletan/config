rm -r etc .config
mkdir -p etc/portage .config/vifm

cp -r /etc/portage/package.accept_keywords etc/portage
cp -r /etc/portage/package.use             etc/portage
cp -r /etc/portage/package.license         etc/portage
cp -r /etc/portage/package.env             etc/portage
cp -r /etc/portage/env                     etc/portage
cp -r /etc/portage/patches                 etc/portage
cp -r /etc/portage/profile                 etc/portage
cp /etc/portage/make.conf                  etc/portage

cp -r ~/.config/mpv                                .config
cp -r ~/.config/hypr                               .config
cp -r ~/.config/foot                               .config
cp -r ~/.config/alsa                               .config
cp -r ~/.config/vim                                .config
cp -r ~/.config/xdg-desktop-portal-termfilechooser .config
cp ~/.config/vifm/vifmrc                           .config/vifm

cp ~/.bashrc              .
cp ~/.bash_profile        .
cp ~/.tmux.conf           .
cp /var/lib/portage/world .
