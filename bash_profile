#!/bin/bash

function source_bashd() {
    local SOURCE="${BASH_SOURCE[0]}"
    if [[ -h $SOURCE ]]; then
        SOURCE="$(readlink $SOURCE)"
    fi
    local DIR="$(dirname $SOURCE)"

    for component in $(ls $DIR/bash.d); do
        source $DIR/bash.d/$component
    done
}
source_bashd

PROMPT_COMMAND='pre_prompt; update_terminal_cwd'
PS1="$(get_prompt)"

check_ssh_agent
