{ config, pkgs, secondpkg, ... }:
{
  home.packages = (with secondpkg; [ 
    #vscodium 
  ]) 
  ++ 
  (with pkgs; [

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
    (pkgs.nerdfonts.override { fonts = [ "ShareTechMono" ]; })
    (pkgs.nerdfonts.override { fonts = [ "SpaceMono" ]; })
    (pkgs.nerdfonts.override { fonts = [ "0xProto" ]; })
    (pkgs.nerdfonts.override { fonts = [ "Agave" ]; })
    #(pkgs.nerdfonts.override { fonts = [ "MaterialDesign" ]; })
    #material-symbols font-awesome #nerdfonts

  # nix related_______________________/
    glibcLocales

  # text editors______________________/
    zed-editor geany kate bluefish vscode helix neovim vim emacs
    #pkgs.bluefish #pkgs.vscodium #pkgs.texmaker #pkgs.kate #pkgs.emacs 
    #pkgs.cudatext

  # Compilers, Interpeters, and Frameworks
     libclang #ghc gcc
     python312Packages.flask python312Packages.django

  # related window managers______________________/
     sway river 
     spectrwm 
    #haskellPackages.xmonad haskellPackages.xmonad-contrib xmobar 
     herbstluftwm notion
     #qtile awesome openbox  
     i3blocks
     yazi  lf ranger  picom dunst  
     #tofi lf wofi
     imagemagick poppler epub-thumbnailer wkhtmltopdf 
     rofi #tint2  ffmpegthumbnailer

  # desktop environments & themes______________________/
    #budgie.budgie-desktop
    pantheon.elementary-icon-theme
    pantheon.elementary-gtk-theme


  # shell & CLI______________________/
    #vimPlugins.Vundle-vim wifite2 wev
    nb metasploit wirelesstools linssid reaverwps-t6x wireshark kismet aircrack-ng
    glances ripgrep glow fortune hollywood fish zsh neofetch bat cmatrix tmux trashy curl git wget htop fzf hugo
    yt-dlp simple-mtpfs go-mtpfs rsync nodejs gem gemstash ruby jekyll 
    antidote tty-clock
    #pkgs.cava 

  # apps______________________/
    #zeroadPackages.zeroad-unwrapped zeroadPackages.zeroad-data
    tor tor-browser  chromium
    alacritty libreoffice-qt6 onlyoffice-desktopeditors dbeaver-bin zathura
    calibre persepolis joplin-desktop anki ticktick networkmanagerapplet super-productivity obsidian 
    thunderbird #joplin-desktop 
    wl-color-picker tauon 
    variety blender 
    #font-manager krita kate scribus tty-clock inkscape 
    gimp kdenlive 
	  #prismlauncher flameshot  variety persepolis  
    syncthing scrcpy 
	  #alacritty foot chromium librewolf museeks strawberry 
	  #clementine  fontpreview 
    wf-recorder

  # andriod & Development__________________/
    whatsapp-for-linux
    
  # games___________________________/
    airshipper #zeroadPackages.zeroad-unwrapped 

  ]);
}
