TMUX_PLUGINS:=${HOME}/.shellter/var/tmux/plugins
.PHONY: \
	tmux ${HOME}/.tmux.conf

all: ${HOME}/.tmux.conf ${TMUX_PLUGINS}/tpm
	make ${HOME}/.tmux.conf
	make ${TMUX_PLUGINS}/tpm
${HOME}/.tmux.conf:
	ln -sf $(realpath ./tmux/tmux.conf) $@
${TMUX_PLUGINS}:
	mkdir -p $@
${TMUX_PLUGINS}/tpm: ${TMUX_PLUGINS}
	git clone https://github.com/tmux-plugins/tpm $@
