rm -rf etc .config kconf world
mkdir -p etc/portage etc/profile.d etc/bash/bashrc.d etc/apparmor.d .config/vifm

cp    /etc/profile.d/bash_xdg.sh                   etc/profile.d
cp    /etc/bash/bashrc.d/bash_xdg.sh               etc/bash/bashrc.d
cp -r /etc/portage/package.accept_keywords         etc/portage
cp -r /etc/portage/package.use                     etc/portage
cp -r /etc/portage/package.license                 etc/portage
cp -r /etc/portage/package.env                     etc/portage
cp -r /etc/portage/env                             etc/portage
cp -r /etc/portage/patches                         etc/portage
cp -r /etc/portage/profile                         etc/portage
cp -r /etc/portage/savedconfig			   etc/portage
cp -r /etc/apparmor.d/                             etc/
cp    /etc/portage/make.conf                       etc/portage
cp    /etc/nftables.conf                           etc/

cp -r ~/.config/mpv                                .config
cp -r ~/.config/mango                              .config
cp -r ~/.config/foot                               .config
cp -r ~/.config/alsa                               .config
cp -r ~/.config/vim                                .config
cp -r ~/.config/bash                               .config
cp -r ~/.config/tmux                               .config
cp -r ~/.config/xdg-desktop-portal*             -t .config
cp    ~/.config/vifm/vifmrc                        .config/vifm
cp    ~/.config/mimeapps.list                      .config

cp /var/lib/portage/world .
cp /usr/src/linux/.config kconf
