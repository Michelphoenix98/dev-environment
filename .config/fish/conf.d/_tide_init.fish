function _tide_init_install --on-event _tide_init_install
    set -U VIRTUAL_ENV_DISABLE_PROMPT true

    source (functions --details _tide_sub_configure)
    _load_config lean
    _tide_finish

    if status is-interactive
        tide bug-report --check || sleep 4

        if contains ilancosman/tide (string lower $_fisher_plugins)
            set_color bryellow
            echo "ilancosman/tide is a development branch. Please install from a release tag:"
            echo -ns "fisher install ilancosman/tide@v5" | fish_indent --ansi
            sleep 3
        end

        switch (read --prompt-str="Configure tide prompt? [Y/n] " | string lower)
            case y ye yes ''
                tide configure
            case '*'
                echo -s \n 'Run ' (echo -ns "tide configure" | fish_indent --ansi) ' to customize your prompt.'
        end
    end
end

function _tide_init_update --on-event _tide_init_update
    # Warn users who install from main branch
    if contains ilancosman/tide (string lower $_fisher_plugins)
        set_color bryellow
        echo "ilancosman/tide is a development branch. Please install from a release tag:"
        echo -ns "fisher install ilancosman/tide@v5" | fish_indent --ansi
        sleep 3
    end
end

function _tide_init_uninstall --on-event _tide_init_uninstall
    set -e VIRTUAL_ENV_DISABLE_PROMPT
    set -e (set -U --names | string match --entire -r '^_?tide')
    functions --erase (functions --all | string match --entire -r '^_?tide')
end
# set -g tide_git_bg_color 268bd2
# set -g tide_git_bg_color_unstable C4A000
# set -g tide_git_bg_color_urgent CC0000
# set -g tide_git_branch_color 000000
# set -g tide_git_color_branch 000000
# set -g tide_git_color_conflicted 000000
# set -g tide_git_color_dirty 000000
# set -g tide_git_color_operation 000000
# set -g tide_git_color_staged 000000
# set -g tide_git_color_stash 000000
# set -g tide_git_color_untracked 000000
# set -g tide_git_color_upstream 000000
# set -g tide_git_conflicted_color 000000
# set -g tide_git_dirty_color 000000
# set -g tide_git_icon 
# set -g tide_git_operation_color 000000
# set -g tide_git_staged_color 000000
# set -g tide_git_stash_color 000000
# set -g tide_git_untracked_color 000000
# set -g tide_git_upstream_color 000000
# set -g tide_pwd_bg_color 444444
