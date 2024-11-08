{ config, pkgs, second, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "marc";
  home.homeDirectory = "/home/marc";

  # Enable this on non nixos
  targets.genericLinux.enable = true;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  imports = [ ./packages.nix  ./dotfiles.nix ];

  #gtk.enable = true;
  #gtk.cursorTheme.package = pkgs.bibata-cursors;
  #gtk.cursorTheme.name = "Bibata-Modern-Ice";

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/marc/etc/profile.d/hm-session-vars.sh
  
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
     EDITOR = "nvim";
  };


   #wayland.windowManager.sway.enable = true;  

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
