all:
	cp nvim/* ~/.config/nvim/ 
	cp tmux/.tmux.conf ~/.tmux.conf

backup:
	cp ~/.config/nvim/coc-settings.json ~/.config/nvim/init.vim ./nvim/
	cp ~/.tmux.conf ./tmux/
