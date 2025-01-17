# Generated from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/copybuffer/copybuffer.plugin.zsh
#
# copy the active line from the command line buffer 
# onto the system clipboard

copybuffer () {
  if which clipcopy &>/dev/null; then
    printf "%s" "$BUFFER" | clipcopy
  else
    zle -M "clipcopy not found. Please make sure you have Zephyr installed correctly."
  fi
}

zle -N copybuffer

bindkey -M emacs "^O" copybuffer
bindkey -M viins "^O" copybuffer
bindkey -M vicmd "^O" copybuffer
