export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo

PATH="$CARGO_HOME/bin:$PATH"

source "$CARGO_HOME/env"
