$env.config.show_banner = false
$env.config.buffer_editor = "zeditor"
$env.config.edit_mode = 'vi'

# --- Aliases ---
alias l = ls -l
alias ll = ls -l
alias quit = exit
alias gcommit = git commit -m
alias upd = nu -c 'source ~/.config/nushell/config.nu'
alias config-home-man-pkgs = zeditor ~/.config/home-manager/modules/packages.nix

# --- Oh My Posh Setup ---
$env.OMP_CONFIG = "~/.poshthemes/M365Princess.omp.json"

source ~/.oh-my-posh.nu

# --- My Startup Commands ---
neofetch
