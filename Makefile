# DIRECTORIES
HOME        = /home/dgloor
CONFIGS     = $(HOME)/.config
DOTS        = $(HOME)/repos/dotfiles
DOTCONFIGS  = $(DOTS)/config
DOTCONFIGSF = $(DOTS)/config-sf

# ACTIONS
RMDIR       = [ -d $(DOTCONFIGS)/$@ ] && rm -rf $(CONFIGS)/$@
LNDIR       = ln -sf $(DOTCONFIGS)/$@ $(CONFIGS)/$@
LNFILE      = ln -sf $(DOTCONFIGSF)/$@ $(CONFIGS)/$@

# TARGETS
APPS        = zsh scriptsdir \
              alacritty bottom bspwm sxhkd copyq dunst \
              flameshot lsd lf mpv nvim paru picom \
              polybar rofi zathura \
              mimeapps.list screenkey.json starship.toml

install: $(APPS)
	echo "Now you can 4rch in peace."

zsh:
	ln -sf $(DOTCONFIGSF)/.zshrc $(HOME)/.zshrc
	ln -sf $(DOTCONFIGSF)/.zshenv $(HOME)/.zshenv

scriptsdir:
	ln -sf $(DOTS)/scripts $(HOME)/.scripts

alacritty:
	$(RMDIR)
	$(LNDIR)

bottom:
	$(RMDIR)
	$(LNDIR)

bspwm:
	$(RMDIR)
	$(LNDIR)

copyq:
	$(RMDIR)
	$(LNDIR)

dunst:
	$(RMDIR)
	$(LNDIR)

flameshot:
	$(RMDIR)
	$(LNDIR)

lf:
	$(RMDIR)
	$(LNDIR)

lsd:
	$(RMDIR)
	$(LNDIR)

mpv:
	$(RMDIR)
	$(LNDIR)

nvim:
	$(RMDIR)
	$(LNDIR)

paru:
	$(RMDIR)
	$(LNDIR)

picom:
	$(RMDIR)
	$(LNDIR)

polybar:
	$(RMDIR)
	$(LNDIR)

rofi:
	$(RMDIR)
	$(LNDIR)

sxhkd:
	$(RMDIR)
	$(LNDIR)

zathura:
	$(RMDIR)
	$(LNDIR)

mimeapps.list:
	$(LNFILE)

screenkey.json:
	$(LNFILE)

starship.toml:
	$(LNFILE)
