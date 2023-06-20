set fish_greeting "Mike's Custom Shell"

# set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always
if status is-interactive
    # Commands to run in interactive sessions can go here
end
