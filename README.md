# rA9

Custom live arch linux building script. Designed to be ran as a live system from a usb. Combines pentesting tools with anonymity tools.

Before building, make custom local repositories from AUR:

https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Custom_local_repository

https://www.youtube.com/watch?v=f4IWyzll4Kw


AUR Package urls:
https://aur.archlinux.org/packages/brave-bin

https://aur.archlinux.org/packages/libpamac-aur

https://aur.archlinux.org/packages/nordvpn-bin

https://aur.archlinux.org/packages/pamac-aur

https://aur.archlinux.org/packages/sublime-text-4

https://aur.archlinux.org/packages/tor-browser

Build command:

$ sudo mkarchiso -v -w rA9wrk/ rA9/
