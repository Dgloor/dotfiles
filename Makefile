# Directories
HOME		= /home/dgloor
CONFIGS		= $(HOME)/.config
DOTS		= $(HOME)/repos/dotfiles
DOTCONFIGS	= $(DOTS)/config
DOTCONFIGSF = $(DOTCONFIGS)/singlefiles

RMDIR		= [ -d $(DOTCONFIGS)/$@ ] && rm -rf $(CONFIGS)/$@
LNDIR		= ln -sf $(DOTCONFIGS)/$@ $(CONFIGS)/$@
LNFILE		= ln -sf $(DOTCONFIGSF)/$@ $(CONFIGS)/$@
MSG			= echo "== $@ configurado correctamente =="

main:
	echo "test"

alacritty:
	$(RMDIR)
	$(LNDIR) && $(MSG)

bottom:
	$(RMDIR) 
	$(LNDIR) && $(MSG)

copyq:
	ln -sf $(DOTCONFIGS)/$@/themes $(CONFIGS)/$@/themes
	ln -sf $(DOTCONFIGS)/$@/$@.conf $(CONFIGS)/$@/$@.conf 
	$(MSG)

flameshot:
	$(RMDIR) 
	$(LNDIR) && $(MSG)

lsd:
	$(RMDIR) 
	$(LNDIR) && $(MSG)

zathura:
	$(RMDIR) 
	$(LNDIR) && $(MSG)

screenkey.json: 
	$(LNFILE) && $(MSG)

starship.toml:
	$(LNFILE) && $(MSG)

zsh:
	ln -sf $(DOTCONFIGSF)/.zshrc $(HOME)/.zshrc
	ln -sf $(DOTCONFIGSF)/.zshenv $(HOME)/.zshenv
	$(MSG)

scripts:
	echo "script test"
