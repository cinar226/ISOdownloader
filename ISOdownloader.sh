#!/bin/bash

#     ISOdownloader is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or any later version.
#
#     ISOdownloader is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
#      You should have received a copy of the GNU General Public License along with ISOdownloader. If not, see <https://www.gnu.org/licenses/>. 
#
#

#     This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or any later version.
#
#   This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>. 
#

# wget and curl verification
echo "please write your package manager. (with capital letters) only have support for APT, ZYPPER, PACMAN and RPM"
echo "If you have curl and wget, you can press Enter and skip."
read pkgmanager

if [[ "$pkgmanager" == "RPM" ]]; then
    sudo dnf install curl wget

if [[ "$pkgmanager" == "APT" ]]; then
    sudo apt update && sudo apt install wget curl
fi

if [[ "$pkgmanager" == "ZYPPER" ]]; then
    sudo zypper install curl wget
fi

if [[ "$pkgmanager" == "PACMAN" ]]; then
    sudo pacman -Syyy && sudo pacman -S curl wget
fi

# creating a folder for the isos
echo "What do you want your folder's name? (Please fill it.)"
read foldername
mkdir $foldername
cd $foldername

# starting
echo "under GNU GPL v3 licence. Copyright© 2024"
echo "Welcome to the"
echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "  III   SSSSS  OOOOO       DDDD   OOOOO  W   W  N   N  L       OOOOO  AAAAA  DDDD   EEEEE  RRRR  "
echo "   I   S       O   O       D   D  O   O  W   W  NN  N  L      O   O  A   A  D   D  E      R   R "
echo "   I   SSSSS   O   O       D   D  O   O  W W W  N N N  L      O   O  AAAAA  D   D  EEEE   RRRR  "
echo "   I       S   O   O       D   D  O   O  WW WW  N  NN  L      O   O  A   A  D   D  E      R  R  "
echo "  III   SSSSS   OOOOO       DDDD   OOOOO  W   W  N   N  LLLLL  OOOOO  A   A  DDDD   EEEEE  R   R"
echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "Selecting a other name from these OS names, will crash the program."
echo "Only have these ISOS: Pop!_OS Normal Pop!_OS NVIDIA, Zorin OS, CentOS, elementaryOS, openSUSE Tumbleweed, openSUSE Leap, Manjaro, Debian, Slackware Linux, Ubuntu, Edubuntu, Linux Mint Cinnamon, Linux Mint XFCE, Gentoo Minimal, Gentoo LiveGUI, Fedora, MX Linux, Endeavour OS Neo, Arch Linux"
read selection
if [[ "$selection" == "Ubuntu" ]]; then
    wget https://ftp.linux.org.tr/ubuntu-releases/24.04.1/ubuntu-24.04.1-desktop-amd64.iso
fi

if [[ "$selection" == "Linux Mint Cinnamon" ]]; then
    wget https://mirrors.cicku.me/linuxmint/iso/stable/22/linuxmint-22-cinnamon-64bit.iso
fi

if [[ "$selection" == "Gentoo Minimal" ]]; then
    wget https://distfiles.gentoo.org/releases/amd64/autobuilds/20241103T164822Z/install-amd64-minimal-20241103T164822Z.iso 
fi

if [[ "$selection" == "Gentoo LiveGUI" ]]; then
    wget https://distfiles.gentoo.org/releases/amd64/autobuilds/20241103T164822Z/livegui-amd64-20241103T164822Z.iso
fi

if [[ "$selection" == "Fedora" ]]; then
    wget https://download.fedoraproject.org/pub/fedora/linux/releases/41/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-41-1.4.iso
fi

if [[ "$selection" == "Linux Mint XFCE" ]]; then
    wget https://mirrors.cicku.me/linuxmint/iso/stable/22/linuxmint-22-xfce-64bit.iso
fi

if [[ "$selection" == "MX Linux" ]]; then
    wget https://ftp.linux.org.tr/mx/iso/MX/Final/KDE/MX-23.4_KDE_x64.iso
fi

if [[ "$selection" == "Endeavour OS Neo" ]]; then
    wget https://mirrors.gigenet.com/endeavouros/iso/EndeavourOS_Endeavour_neo-2024.09.22.iso
fi

if [[ "$selection" == "Arch Linux" ]]; then
    wget https://geo.mirror.pkgbuild.com/iso/2024.11.01/archlinux-2024.11.01-x86_64.iso
fi

if [[ "$selection" == "Edubuntu" ]]; then
    wget https://cdimages.ubuntu.com/edubuntu/releases/24.04.1/release/edubuntu-24.04.1-desktop-amd64.iso
fi

if [[ "$selection" == "Slackware Linux" ]]; then
    wget https://mirrors.slackware.com/slackware/slackware-iso/slackware64-15.0-iso/slackware64-15.0-install-dvd.iso
fi

if [[ "$selection" == "Debian" ]]; then
    wget https://ftp.linux.org.tr/debian-cd/12.7.0/amd64/iso-cd/debian-12.7.0-amd64-netinst.iso
fi

if [[ "$selection" == "Manjaro" ]]; then
    wget https://download.manjaro.org/kde/24.1.2/manjaro-kde-24.1.2-241104-linux610.iso
fi

if [[ "$selection" == "CentOS" ]]; then
    wget https://mirrors.centos.org/mirrorlist?path=/9-stream/BaseOS/x86_64/iso/CentOS-Stream-9-latest-x86_64-dvd1.iso&redirect=1&protocol=https
fi

if [[ "$selection" == "elementaryOS" ]]; then
    wget https://sgp1.dl.elementary.io/download/MTczMTA5ODEwMA==/elementaryos-7.1-stable.20230926rc.iso
fi

if [[ "$selection" == "ZorinOS" ]]; then
    wget https://fosszone.csd.auth.gr/zorinos/17/Zorin-OS-17.2-Core-64-bit.iso
fi

if [[ "$selection" == "Pop!_OS Normal" ]]; then
    wget https://iso.pop-os.org/22.04/amd64/intel/47/pop-os_22.04_amd64_intel_47.iso
fi

if [[ "$selection" == "Pop!_OS NVIDIA" ]]; then
    wget https://iso.pop-os.org/22.04/amd64/nvidia/47/pop-os_22.04_amd64_nvidia_47.iso
fi

if [[ "$selection" == "openSUSE Tumbleweed" ]]; then
    wget https://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-DVD-x86_64-Current.iso
fi

if [[ "$selection" == "openSUSE Leap" ]]; then
    wget https://download.opensuse.org/distribution/leap/15.6/iso/openSUSE-Leap-15.6-DVD-x86_64-Media.iso
fi









