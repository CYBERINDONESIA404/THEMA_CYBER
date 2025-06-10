GNU nano 8.4                                              

VIP_CODE="CYBER INDONESIA 404" # Kode VIP
CONFIG_PATH="$HOME/.config/neofetch/config.conf"
AUDIO_PATH="/mnt/data/merayakan darkness.mp3"

if command -v mpv &>/dev/null; then
    mpv "$AUDIO_PATH" --no-video --loop &>/dev/null &
    AUDIO_PID=$!
else
    echo -e "\033[1;33m⚠️  mpv tidak ditemukan! Audio tidak diputar.\033[0m"
fi

clear
figlet -f slant "CYBER DARKNESS404" | lolcat
neofetch --ascii_distro Debian
echo -e "\033[1;36m🔥 NEOTHEME VIP v90.7 🔥\033[0m"
echo -e "\033[1;33m🔑 Masukkan kode aktivasi untuk mengakses fitur premium!\033[0m"
echo -e "\033[1;31mJika belum punya kode, hubungi: +62881024447179\033[0m\n"
echo -e "\033[1;32m👑 Author: CYBER INDONESIA 404 \033[0m\n" # Tambahan Author

read -p "🔑 Masukkan kode VIP: " user_code
if [[ "$user_code" != "$VIP_CODE" ]]; then
    echo -e "\033[1;31m❌ Kode salah! Hubungi +62881024447179 untuk mendapatkan akses.\033[0m"
    [[ -n "$AUDIO_PID" ]] && kill "$AUDIO_PID"  
    exit 1
fi

echo -e "\033[1;32m✅ Kode benar! Mengaktifkan fitur VIP...\033[0m"
sleep 2
clear

figlet -f slant "THEME CYBER INDONESIA 404" | lolcat
echo -e "PEMBUAT ALATNYA : CYBER INDONESIA 404"
echo -e ""
neofetch --ascii_distro Debian
echo -e "\033[1;36m🔥 Pilih Tema Neofetch 🔥\033[0m"
echo -e "\033[1;33m--------------------------------------------------\033[0m"
echo -e " 1) Ubuntu          6) Windows 10     11) Fedora         16) Slackware"
echo -e " 2) Kali Linux      7) Windows 11     12) Debian         17) Void Linux"
echo -e " 3) Arch Linux      8) MacOS          13) OpenSUSE       18) Gentoo"
echo -e " 4) Garuda Linux    9) Android        14) Pop!_OS        19) Alpine"
echo -e " 5) Manjaro        10) Termux         15) ZorinOS        20) RedHat"
echo -e "--------------------------------------------------"
echo -e "21) Deepin         26) BlackArch      29) FreeBSD"
echo -e "22) ElementaryOS   27) Raspbian       30) Custom ASCII"
echo -e "23) MX Linux       28) EndeavourOS"
echo -e "24) ParrotOS"
echo -e "25) Solus"
echo -e "--------------------------------------------------"
echo -e "99) Keluar"
echo -e "\033[1;33m--------------------------------------------------\033[0m\n"

read -p "🔥 Pilih nomor [1-30, 99]: " pilihan

case $pilihan in
    1) distro="Ubuntu";;
    2) distro="Kali";;
    3) distro="Arch";;
    4) distro="Garuda";;
    5) distro="Manjaro";;
    6) distro="Windows 10";;
    7) distro="Windows 11";;
    8) distro="MacOS";;
    9) distro="Android";;
    10) distro="Termux";;
    11) distro="Fedora";;
    12) distro="Debian";;
    13) distro="OpenSUSE";;
    14) distro="Pop!_OS";;
    15) distro="ZorinOS";;
    16) distro="Slackware";;
    17) distro="Void Linux";;
    18) distro="Gentoo";;
    19) distro="Alpine";;
    20) distro="RedHat";;
    21) distro="Deepin";;
    22) distro="ElementaryOS";;
    23) distro="MX Linux";;
    24) distro="ParrotOS";;
    25) distro="Solus";;
    26) distro="BlackArch";;
    27) distro="Raspbian";;
    28) distro="EndeavourOS";;
    29) distro="FreeBSD";;
    30)
        read -p "🖼 Masukkan path file ASCII custom: " ascii_file
        distro="custom"
        echo "ascii_distro=\"custom\"" > "$CONFIG_PATH"
        echo "ascii=\"$ascii_file\"" >> "$CONFIG_PATH"
        echo -e "\033[1;32m✅ ASCII Custom berhasil diatur!\033[0m"
        ;;
    99) echo -e "\033[1;31m❌ Keluar...\033[0m" && [[ -n "$AUDIO_PID" ]] && kill "$AUDIO_PID" && exit;;
    *) echo -e "\033[1;31m❌ Pilihan tidak valid!\033[0m" && [[ -n "$AUDIO_PID" ]] && kill "$AUDIO_PID" && exit;;
esac

mkdir -p "$(dirname "$CONFIG_PATH")"
echo "ascii_distro=\"$distro\"" > "$CONFIG_PATH"

echo -e "\033[1;32m✅ Tema Neofetch diubah ke \033[1;36m$distro\033[1;32m.\033[0m"
echo -e "\033[1;33m🚀 Restart Termux untuk melihat perubahan.\033[0m"

[[ -n "$AUDIO_PID" ]] && kill "$AUDIO_PID"

exit
