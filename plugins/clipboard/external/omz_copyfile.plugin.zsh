# Generated from https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/copyfile/copyfile.plugin.zsh
#
# Copies the contents of a given file to the system or X Windows clipboard
#
# copyfile <file>
function copyfile {
  emulate -L zsh
  clipcopy $1
}
