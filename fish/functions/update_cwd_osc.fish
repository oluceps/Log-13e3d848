function update_cwd_osc --description="Notify terminals when $PWD changes" --on-variable="PWD"
    if status --is-command-substitution || set -q INSIDE_EMACS
        return
    end
    printf \e\]7\;file://%s%s\e\\ $hostname (string escape --style=url $PWD)
end
