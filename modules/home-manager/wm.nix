{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$menu" = "wofi --show drun";
      exec-once = [
        "firefox"
      ];
      input = {
        kb_layout = "us,ru";
	kb_options = "grp:alt_shift_toggle";
      };
      binds = {
        allow_workspace_cycles = true;
      };
      animations.enabled = false;
      misc.disable_hyprland_logo = true;

      bind =
      let 
        concatBind = mod: option: 
        (builtins.map
          (x: let str = builtins.toString x; in
            "${mod}, ${str}, ${option}, ${str}"
          )
        [ 1 2 3 4 5 6 7 8 9 ]);
      in

      [
        "$mod, Return, exec, kitty"
	"$mod, R, exec, $menu"
	"$mod SHIFT, Q, exit"
	"$mod SHIFT, C, killactive"
	"$mod, TAB, workspace, previous"
	"$mod, V, togglefloating,"
      ] ++ concatBind "$mod" "workspace" ++ concatBind "$mod SHIFT" "movetoworkspacesilent";
      bindm = [
        "$mod,mouse:272,movewindow"
        "$mod,mouse:273,resizewindow"
      ];
    };
  };
}
