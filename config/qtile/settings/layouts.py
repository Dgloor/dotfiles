# Layouts and layout rules

from libqtile import layout

from settings.theme import colors


layout_conf = {
    'border_focus': colors['focus'][0],
    'border_width': 1,
    'margin': 5,
}

layouts = [
    layout.MonadTall(**layout_conf),
    layout.Max(),
    # layout.RatioTile(**layout_conf),
    # layout.Tile(add_after_last=True, **layout_conf),
    # layout.MonadWide(**layout_conf),
    # layout.Bsp(**layout_conf),
    # layout.Matrix(columns=2, **layout_conf),
    # layout.Columns(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Slice(),
    # layout.Zoomy(**layout_conf),
    # layout.Stack(**layout_conf),
]

floating_layout = layout.Floating(
    float_rules=[
        {'wmclass': 'confirm'},
        {'wmclass': 'dialog'},
        {'wmclass': 'download'},
        {'wmclass': 'error'},
        {'wmclass': 'file_progress'},
        {'wmclass': 'notification'},
        {'wmclass': 'splash'},
        {'wmclass': 'toolbar'},
        {'wmclass': 'confirmreset'},
        {'wmclass': 'makebranch'},
        {'wmclass': 'maketag'},
        {'wname': 'branchdialog'},
        {'wname': 'pinentry'},
        {'wmclass': 'ssh-askpass'},
    ],
    border_focus=colors['focus'][0]
)
