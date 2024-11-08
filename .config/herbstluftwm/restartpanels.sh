#!/nix/store/vpvy79k1qq02p1vyqjk6nb89gwhxqvyb-bash-5.2p32/bin/bash

installdir=/

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
defaultpanel="$XDG_CONFIG_HOME/herbstluftwm/panel.sh"

[ -x "$defaultpanel" ] || defaultpanel="$installdir/nix/store/6hg4v4hzxa2mwfcpgp8jh686qvz1gqr2-herbstluftwm-0.9.5/etc/xdg/herbstluftwm/panel.sh"

panelcmd="${1:-$defaultpanel}"

herbstclient emit_hook quit_panel

for i in $(herbstclient list_monitors | cut -d':' -f1) ; do
    "$panelcmd" $i &
done
