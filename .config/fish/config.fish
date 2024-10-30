if status is-interactive
    # Commands to run in interactive sessions can go here
end

# 删除问候语
set -U fish_greeting

# fcitx5 输入法环境变量
set -x XMODIFIERS "@im=fcitx"
set -x QT_IM_MODULE fcitx
set -x SDL_IM_MODULE fcitx
set -x GLFW_IM_MODULE fcitx

# 别名
function ls
    eza --icons --color $argv
end

function la
    eza -a --icons --color $argv
end

function ll
    eza -a -l --icons --color $argv
end

alias c='clear'
alias e='helix'
alias v='helix'
alias h='helix'
alias y='yazi'
alias zat='zathura'
alias vpn='sudo openconnect --protocol=pulse https://vpn.pku.edu.cn'

# 设置 PATH 环境变量
set -x PATH $HOME/.local/bin $HOME/.local/bin/flutter/bin $PATH
set -x PATH $HOME/.local/bin/android-sdk/platform-tools $PATH
set -x PATH $HONE/.cargo/bin $PATH

# 设置 flutter 环境变量
set -x CHROME_EXECUTABLE chromium
set -x FLUTTER_GIT_URL https://mirrors.tuna.tsinghua.edu.cn/git/flutter-sdk.git

# oh-my-posh 初始化
oh-my-posh init fish --config $HOME/.config/oh-my-posh/themes/negligible.omp.json | source

# 执行 fastfetch
fastfetch --config examples/8

# 初始化 zoxide
zoxide init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
