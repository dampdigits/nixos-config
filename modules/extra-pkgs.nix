{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    htop
    ulauncher
    kitty
    obs-studio
    vlc
    gimp-with-plugins
    nerdfonts
    tree
    speedtest-cli
    bash-completion
    wmctrl
    krita
    steam
    wl-clipboard
    gnomeExtensions.clipboard-history
    mesa
    mesa-demos
    vulkan-tools
    pciutils
    libGL
    postman
    virtualenv
    starship
    gnome-tweaks
    eyedropper
    pywal
    gnomeExtensions.blur-my-shell
    jellyfin-ffmpeg
  ];
}
  
