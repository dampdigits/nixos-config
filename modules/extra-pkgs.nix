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
    warp-terminal
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
    zeroad
    postman
  ];
}
  
