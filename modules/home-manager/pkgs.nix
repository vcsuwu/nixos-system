{ pkgs, ...}:

{
  home.packages = with pkgs; [
    firefox
    kitty
    wofi
    p7zip
    godot_4
  ];
}
