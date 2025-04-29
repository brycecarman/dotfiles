function ve() {
    local py="/usr/bin/python3"
    if [ ! -d ./.venv ]; then
        echo "creating venv..."
        if ! $py -m venv .venv --prompt=$(basename $PWD) --upgrade-deps; then
            echo "ERROR: Problem creating venv" >&2
            return 1
        fi
    fi
    source .venv/bin/activate
}
