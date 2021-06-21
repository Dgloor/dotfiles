# Directories
HOME		= /home/dgloor
CONFIGS		= $(HOME)/.config
DOTS		= $(HOME)/repos/dotfiles
DOTCONFIGS	= $(DOTS)/config
DOTCONFIGSF 	= $(DOTCONFIGS)/singlefiles

RMDIR		= [ -d $(DOTCONFIGS)/$@ ] && rm -rf $(CONFIGS)/$@
LNDIR		= ln -sf $(DOTCONFIGS)/$@ $(CONFIGS)/$@
LNFILE		= ln -sf $(DOTCONFIGSF)/$@ $(CONFIGS)/$@
MSG		= echo "== $@ configurado correctamente =="

main: alacritty bottom copyq flameshot lsd zathura screenkey.json starship.toml zsh
	echo "Todo configurado correctamente"

alacritty:
	$(RMDIR)
	$(LNDIR) && $(MSG)

bottom:
	$(RMDIR) 
	$(LNDIR) && $(MSG)

copyq:
	$(RMDIR)
	$(LNDIR) && $(MSG)

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
