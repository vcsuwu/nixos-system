{ pkgs, ...}:

{
  programs = {
    kitty = {
      enable = true;
      font = {
        package = with pkgs; (nerdfonts.override { fonts = [ "JetBrainsMono" ];});
	name = "JetBrainsMono Nerd Font Mono";
	size = 12;
      };
      settings = {
        placement_strategy = "top-left";
      };
    };
    git = {
      enable = true;
      userName = "vocus";
      userEmail = "zenyabtw@gmail.com";
      extraConfig = {
        init = {
          defaultBranch = "main";
        };
      };
    };
  };
}
