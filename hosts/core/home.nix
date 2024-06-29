{ config, pkgs, ... }:

{
  home.username = "vocus";
  home.homeDirectory = "/home/vocus";
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;

  imports =
  let
    hm-dir = ../../modules/home-manager;
    path = name: hm-dir + name;
  in
  [
    (path /pkgs.nix)
    (path /xdg.nix)
    (path /wm.nix)
    (path /apps.nix)
  ];
}
