# NOTE: There is probably a sexier nicer way to do this, but until I figure that out I am manually unsetting here.
# Unsets PATH
set -g -x PATH

# This allows us to use Homebrew versions of things (like git) rather than the pre-installed or XCode installed versions.
# See http://blog.grayghostvisuals.com/git/how-to-keep-git-updated/ for reference.
set -g -x PATH $PATH /usr/local/bin

# Sets necessary PATH defaults
set -g -x PATH $PATH /usr/bin /bin /usr/sbin /sbin

# vim us default editor
set -x EDITOR /usr/bin/vim

# pretty colors
. $HOME/.config/fish/solarized.fish
. $HOME/.config/fish/virtual.fish
. $HOME/.config/fish/auto_activation.fish
set -x LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

function festicket_django_settings_module --on-event virtualenv_did_activate:festicket
    set -gx DJANGO_SETTINGS_MODULE festicket.settings.dev.matthew
end

