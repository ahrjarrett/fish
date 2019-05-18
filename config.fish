set -gx DOTFILES $HOME/dotfiles
set -gx FISH_PATH $HOME/fish.d
set -gx FISH_FILE $FISH_PATH/config.fish
set -gx BASH_FILE $HOME/.bash_profile
set -gx VIM_FILE $HOME/nvim/init.vim
set -gx EDITOR nvim

set -gx fish_escape_delay_ms 10

# Load env variables
if test -f $FISH_PATH/env.fish
  source $FISH_PATH/env.fish
end

# Load abbrevs
if not set -q fish_abbreviations_set
  source $FISH_PATH/functions/set_abbr.fish
  set -U fish_abbreviations_set true
end

function fish_greeting
end

# Better titles
function fish_title
  test (count $argv) -gt 0
    and echo $argv[1]
    or prompt_pwd
end

### TURN ON FOR VIM NODE ONLY! ###
#set -q fish_escape_delay_ms 10
#
#fish_user_key_bindings

rvm default

