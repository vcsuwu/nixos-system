{ config, ... }:

{
  xdg = {
    enable = true;
    userDirs =
      let
        homedir = config.home.homeDirectory;
	createPath = path: "${homedir}/" + path;
      in
    {
      enable = true;
      createDirectories = true;
      documents = createPath "documents";
      download = createPath "installs";
      music = createPath "music";
      pictures = createPath "images";
      videos = createPath "videos";
      publicShare = createPath "share";
      templates = createPath "temaplates";
      desktop = createPath "desktop";
    };
  };
}
