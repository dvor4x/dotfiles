install:
	cp nvim/* ~/.config/nvim/ 
	cp tmux/.tmux.conf ~/.tmux.conf
	cp fish/* ~/.condig/fish/functions/

backup:
	cp ~/.config/nvim/coc-settings.json ~/.config/nvim/init.vim ./nvim/
	cp ~/.tmux.conf ./tmux/
	cp ~/.config/fish/functions/* fish/
