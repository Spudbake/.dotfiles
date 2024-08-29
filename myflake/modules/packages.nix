{config,pkgs,inputs,...}:
  {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    #stuff for actully doing stuff
    neovim
    kitty
    git
    firefox
    nodejs 
    wget
    clang
    ripgrep
    #stuff for seeing with
    waybar
    dunst
    libnotify
    swww
    rofi-wayland
    networkmanagerapplet
    #tmux
    tmux

    neofetch
    pavucontrol
    xorg.xev

    nerdfonts
    zip
    unzip
    headsetcontrol
    

    home-manager

    openssh

    stylua
    
    cmake
    gcc 
    clang

    betterdiscordctl
    betterdiscord-installer
    discord

    xfce.thunar
    xfce.thunar-volman
    nwg-look
    catppuccin

    cudatoolkit
    python3
    gvfs
    prismlauncher
    glxinfo
 ];
}
