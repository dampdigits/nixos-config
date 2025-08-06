{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    fastfetch
    gcc
    git
    gnupg
    google-chrome
    jdk
    libgcc
    libgccjit
    neovim # The Nano editor is also installed by default.
    nodejs_22
    python3
    vim
    vscode-fhs
    wget
    htop
    ulauncher
    kitty
    obs-studio
    vlc
    gimp3-with-plugins
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
  
