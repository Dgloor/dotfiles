# All Qtile Keybindings

from libqtile.config import Key
from libqtile.command import lazy


mod = "mod4" # windows key
term = "alacritty"

keys = [Key(key[0], key[1], *key[2:]) for key in [

    # ------------ WINDOW CONFIGS ------------

    # Switch between windows in current stack pane
    ([mod], "j", lazy.layout.down()),
    ([mod], "k", lazy.layout.up()),
    ([mod], "h", lazy.layout.left()),
    ([mod], "l", lazy.layout.right()),

    # Change window sizes (MonadTall)
    ([mod, "shift"], "l", lazy.layout.grow()),
    ([mod, "shift"], "h", lazy.layout.shrink()),

    # Toggle floating
    ([mod, "shift"], "f", lazy.window.toggle_floating()),

    # Move windows up or down in current stack
    ([mod, "shift"], "j", lazy.layout.shuffle_down()),
    ([mod, "shift"], "k", lazy.layout.shuffle_up()),

    # Toggle between different layouts as defined below
    ([mod], "Tab", lazy.next_layout()),
    ([mod, "shift"], "Tab", lazy.prev_layout()),

    # Change Window
    (["mod1"], "Tab", lazy.layout.down()),

    # Kill window
    ([mod, "shift"], "q", lazy.window.kill()),
    (["mod1"], "F4", lazy.window.kill()),

    # Restart Qtile
    ([mod, "control"], "r", lazy.restart()),

    # Quit Qtile
    ([mod, "control"], "t", lazy.shutdown()),

    # Change layout sizes - Monadtall
    ([mod], "m", lazy.layout.maximize()),
    ([mod, "shift"], "m", lazy.layout.reset()),
    ([mod, "control"], "m", lazy.layout.normalize()),

    # # Switch focus of monitors
    # ([mod], "period", lazy.next_screen()),
    # ([mod], "comma", lazy.prev_screen()),


    # ------------ APP CONFIGS ------------

    # Menu - Rofi
    ([mod, "shift"], "Return", lazy.spawn("rofi -show drun")),
    ([mod], "o", lazy.spawn("rofi -show window")),
    ([mod, "shift"], "o", lazy.spawn("rofi -show run")),

    # Clipboard - CopyQ
    ([mod], "c", lazy.spawn("copyq toggle")),

    # Browser
    ([mod], "w", lazy.spawn("google-chrome-stable")),

    # File Explorer
    ([mod], "e", lazy.spawn("thunar")),

    # Terminal
    ([mod], "Return", lazy.spawn(f"{term}")),

    # Screenshots
    # ([mod], "s", lazy.spawn("escrotum -s")),
    # ([mod, "shift"], "s", lazy.spawn("escrotum -s -C")),
    ([mod, "shift"], "s", lazy.spawn("flameshot gui")),

    # Traductor
    ([mod, "shift"], "y", lazy.spawn(f"{term} -e trans -b -shell")),

    # Redshift
    ([mod], "r", lazy.spawn("redshift -O 4500")),
    ([mod, "shift"], "r", lazy.spawn("redshift -x")),


    # ------------ HARDWARE CONFIGS ------------

    # Volume
    ([], "XF86AudioLowerVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ -2%"
    )),
    ([], "XF86AudioRaiseVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ +2%"
    )),
    ([], "XF86AudioMute", lazy.spawn(
        "pactl set-sink-mute @DEFAULT_SINK@ toggle"
    )),
    ([], "XF86AudioPlay", lazy.spawn(
        "playerctl play-pause"
    )),

    # # Brightness
    # ([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    # ([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),
]]
