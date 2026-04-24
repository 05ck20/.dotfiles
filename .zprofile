export TERMINAL=st
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export BROWSER=firefox

export PATH="$HOME/.local/bin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"  # Where user-specific configurations should be written (analogous to /etc).
export XDG_DATA_HOME="$HOME/.local/share" # Where user-specific data files should be written (analogous to /usr/share).
export XDG_STATE_HOME="$HOME/.local/state" # Where user-specific state files should be written (analogous to /var/lib).
export XDG_CACHE_HOME="$HOME/.cache" # Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
export XDG_RUNTIME_DIR="/run/user/$UID"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PYTHON_HISTORY="$XDG_CACHE_HOME/python_history"
