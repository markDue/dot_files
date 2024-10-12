{ config, pkgs, ... }:
{
  home.packages = with pkgs; [

  # # You can also create simple shell scripts directly inside your
  # # configuration. For example, this adds a command 'my-hello' to your
  # # environment:

  # fonts______________________/
   (pkgs.writeShellScriptBin "my-hello" '' echo "Hello, ${config.home.username}!" '')
    (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
    (pkgs.nerdfonts.override { fonts = [ "ComicShannsMono" ]; })
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (pkgs.nerdfonts.override { fonts = [ "Iosevka" ]; })
    (pkgs.nerdfonts.override { fonts = [ "CascadiaMono" ]; })
    (pkgs.nerdfonts.override { fonts = [ "CodeNewRoman" ]; })
    #(pkgs.nerdfonts.override { fonts = [ "MaterialDesign" ]; })
    #material-symbols font-awesome #nerdfonts

  # text editors______________________/
    bluefish vscodium helix neovim vim
    #pkgs.bluefish #pkgs.vscodium #pkgs.texmaker #pkgs.kate #pkgs.emacs 
    #pkgs.cudatext

  # related window managers______________________/
     sway
     river i3blocks
     tofi yazi lf ranger spectrwm picom dunst wofi mako
     imagemagick poppler epub-thumbnailer wkhtmltopdf #ffmpegthumbnailer
    #pkgs.qtile pkgs.awesome pkgs.openbox pkgs.sway pkgs.river pkgs.waybar 
    #pkgs.tint2 pkgs.rofi

  # desktop environments______________________/
    #budgie.budgie-desktop

  # shell & CLI______________________/
    #vimPlugins.Vundle-vim wifite2 wev
     libclang ghc gcc
    wirelesstools linssid reaverwps-t6x wireshark kismet aircrack-ng
    glances ripgrep glow fortune hollywood fish zsh neofetch bat cmatrix tmux trashy curl git wget htop fzf hugo
    yt-dlp simple-mtpfs go-mtpfs rsync nodejs gem gemstash ruby jekyll 
    antidote tty-clock
    #pkgs.cava 

  # apps______________________/
    #zeroadPackages.zeroad-unwrapped zeroadPackages.zeroad-data
    tor tor-browser  chromium
    dbeaver-bin 
    calibre persepolis joplin-desktop anki ticktick networkmanagerapplet evolution super-productivity obsidian 
    thunderbird #joplin-desktop 
    wl-color-picker tauon arc-kde-theme arc-icon-theme epapirus-icon-theme variety blender 
    #font-manager krita kate scribus tty-clock inkscape 
    gimp kdenlive 
	  #prismlauncher flameshot  variety persepolis zathura 
    syncthing scrcpy 
	  #alacritty foot chromium librewolf museeks strawberry 
	  #clementine pantheon.elementary-icon-theme fontpreview 

  ];
}
