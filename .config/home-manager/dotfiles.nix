{ config, pkgs, ... }:
{
 home.file = {

     ".local/bin/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.local/bin/";
     #".mozilla/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.mozilla/";
     #".ssh/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.ssh/";
     ".vim/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.vim/";
     #".tmux/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.tmux/";
     #".vscode/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.vscode/";
     #".vscode-oss/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.vscode-oss/";

     ".zshenv".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.zshenv";
     ".bashrc".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.bashrc";
     ".vimrc".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.vimrc";

     ".config/home-manager/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/home-manager/";

     ".config/alacritty".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/alacritty";
     ".config/awesome/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/awesome/";
     ".config/bspwm/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/bspwm/";
     ".config/chromium/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/chromium/";
     ".config/dk/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/dk/";
     ".config/dwl/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/dwl/";
     ".config/emacs/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/emacs/";
     ".config/foot/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/foot/";
     ".config/gedit/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/gedit/";
     ".config/helix/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/helix/";
     ".config/hypr/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/hypr/";
     ".config/joplin-desktop/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/joplin-desktop/";
     ".config/kanshi/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/kanshi/";
     ".config/kate/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/kate/";
     ".config/kitty/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/kitty/";
     ".config/lf/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/lf/";
     ".config/mako/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/mako/";
     ".config/dunst/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/dunst/";
     ".config/mpv/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/mpv/";
     ".config/neofetch/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/neofetch/";
     ".config/nitrogen/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/nitrogen/";
     ".config/nix/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/nix/";
     ".config/nixpkgs/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/nixpkgs/";
     ".config/nvim/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/nvim/";
     ".config/openbox/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/openbox/";
     ".config/picom/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/picom/";
     ".config/polybar/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/polybar/";
     ".config/ranger/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/ranger/";
     ".config/river/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/river/";
     ".config/rofi/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/rofi/";
     ".config/spectrwm/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/spectrwm/";
     ".config/superProductivity/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/superProductivity/";
     ".config/sway/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/sway/";
     ".config/swaylock/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/swaylock/";
     ".config/sxhkd/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/sxhkd/";
     ".config/Thunar/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/Thunar/";
     ".config/tint2/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/tint2/";
     ".config/tmux/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/tmux/";
     ".config/tofi/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/tofi/";
     ".config/variety/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/variety/";
     ".config/volumeicon/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/volumeicon/";
     ".config/waybar/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/waybar/";
     ".config/wf-shell/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/wf-shell/";
     ".config/wlogout/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/wlogout/";
     ".config/wofi/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/wofi/";
     ".config/yambar/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/yambar/";
     ".config/youtube-dl/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/youtube-dl/";
     ".config/yt-dlp/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/yt-dlp/";
     ".config/zsh/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/zsh/";
     ".config/wayfire.ini".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/wayfire.ini";
     ".config/wf-shell.ini".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/wf-shell.ini";
     ".config/herbstluftwm/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/herbstluftwm/";
     ".config/xmonad/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/xmonad/";

     #".config/glance/".source = config.lib.file.mkOutOfStoreSymlink "/mnt/storage/dotfiles/.config/glance/";
 };
 
}
