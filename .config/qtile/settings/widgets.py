# Bar Widgets

from libqtile import widget
from settings.theme import colors
from settings.keys import term


# ------------------------

icon_size = 9

base = lambda fg="text", bg="dark": {"foreground": colors[fg], "background": colors[bg]}


def space():
    return widget.Sep(**base(), linewidth=0, padding=5)


def extra_space():
    return widget.Sep(**base(), linewidth=0, padding=100)


def sep():
    return icon(bg="dark", fontsize=13, text="")


icon = lambda fg="text", bg="dark", fontsize=13, text="?": widget.TextBox(
    **base(fg, bg), fontsize=fontsize, text=text, padding=3
)

# ------------------------


def workspaces():
    return [
        widget.TextBox(
            **base(bg="dark"),
            fontsize=12,
            text=" ",
            padding=3,
            mouse_callbacks={
                "Button1": lambda qtile: qtile.cmd_spawn(" rofi -show drun"),
            },
        ),
        space(),
        widget.GroupBox(
            **base(fg="light"),
            font="UbuntuMono Nerd Font",
            fontsize=11,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=5,
            borderwidth=1,
            active=colors["active"],
            inactive=colors["inactive"],
            rounded=False,
            highlight_method="block",
            urgent_alert_method="block",
            urgent_border=colors["urgent"],
            this_current_screen_border=colors["focus"],
            this_screen_border=colors["grey"],
            other_current_screen_border=colors["dark"],
            other_screen_border=colors["dark"],
            disable_drag=True,
        ),
        space(),
        widget.WindowName(
            **base(fg="title"),
            fontsize=12,
            margin_y=3,
            paddingy=8,
        ),
        extra_space(),
    ]


primary_widgets = [
    # 神     
    *workspaces(),
    space(),
    # -- LAYOUT --
    widget.CurrentLayoutIcon(**base(bg="dark"), scale=0.6),
    widget.CurrentLayout(**base(bg="dark"), padding=5),
    sep(),
    # -- PACMAN --
    icon(
        bg="dark",
        fontsize=icon_size + 1,
        text="📦",
    ),
    widget.Pacman(
        mouse_callbacks={
            "Button1": lambda qtile: qtile.cmd_spawn(f"{term} -e sudo pacman -Syyu"),
            "Button2": lambda qtile: qtile.cmd_spawn(f"{term} -e sudo yay -Syua" ),
        },
        **base(bg="dark"),
        update_interval=1800,
    ),
    sep(),
    # -- CPU USAGE --
    icon(bg="dark", fontsize=icon_size + 2, text="💻"),
    widget.CPU(
        **base(bg="dark"),
        padding=5,
        update_interval=2.0,
        format="{load_percent}%",
        mouse_callbacks={
            "Button1": lambda qtile: qtile.cmd_spawn(
                f"{term} -e htop -s PERCENT_CPU"
            )
        },
    ),
    sep(),
    # -- TEMPERATURE --
    icon(bg="dark", fontsize=icon_size, text="🔥"),
    widget.ThermalSensor(**base(bg="dark"), threshold=70),
    sep(),
    # -- MEMORY USAGE --
    icon(bg="dark", fontsize=icon_size + 2, text="🧠"),
    widget.Memory(
        **base(bg="dark"),
        padding=5,
        update_interval=2.0,
        format="{MemUsed}/{MemTotal}",
        mouse_callbacks={
            "Button1": lambda qtile: qtile.cmd_spawn(
                f"{term} -e htop -s PERCENT_MEM"
            )
        },
    ),
    sep(),
    # -- VOLUME --
    widget.Volume(**base(bg="dark"), emoji=True),
    widget.Volume(**base(bg="dark")),
    sep(),
    # -- DATE --
    icon(bg="dark", fontsize=icon_size, text="📅"),
    widget.Clock(
        **base(bg="dark"),
        format="%d/%m/%Y",
        mouse_callbacks={
            "Button1": lambda qtile: qtile.cmd_spawn(f"{term}" + " -e calcurse")
        },
    ),
    sep(),
    # -- TIME --
    icon(bg="dark", fontsize=icon_size, text="🕑"),
    widget.Clock(**base(bg="dark"), format="%H:%M"),
    sep(),
    # -- SYSTRAY --
    widget.Systray(background=colors["dark"], padding=5, icon_size=icon_size + 3),
]

secondary_widgets = [
    *workspaces(),
    space(),
    widget.CurrentLayoutIcon(**base(bg="dark"), scale=0.65),
    widget.CurrentLayout(**base(bg="dark"), padding=5),
]

widget_defaults = {
    "font": "UbuntuMono Nerd Font Bold",
    "fontsize": 12,
    "padding": 1,
}
extension_defaults = widget_defaults.copy()
