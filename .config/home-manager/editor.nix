{ config, pkgs, editor, ... }:
{
  home.packages = with editor; [
    vscode
  ];
}
