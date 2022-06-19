# rA9

Custom live arch linux building script. Designed to be ran as a live system from a usb. Combines pentesting tools with anonymity tools.

Before building, make custom local repositories from AUR: <br />
https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Custom_local_repository <br />
https://www.youtube.com/watch?v=f4IWyzll4Kw


AUR Package urls: <br />
https://aur.archlinux.org/packages/brave-bin <br />
https://aur.archlinux.org/packages/libpamac-aur <br />
https://aur.archlinux.org/packages/nordvpn-bin <br />
https://aur.archlinux.org/packages/pamac-aur <br />
https://aur.archlinux.org/packages/sublime-text-4 <br />
https://aur.archlinux.org/packages/tor-browser <br />

Edit rA9/pacman.conf to point to the directories of the custom local repositories. <br />
Edit rA9/packages.x86_64 to add more packages.

Build command: <br />
$ sudo mkarchiso -v -w rA9wrk/ rA9/
