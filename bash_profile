  ---------------------------------------------------------------------------
#
#  BASH configurations and aliases for my iOmega HMNHD in /etc/profile
#
#  ---------------------------------------------------------------------------


#   Change Prompt
#   ------------------------------------------------------------
#   export PS1="\u@\h:>\w# "


#   add Paths for IPKG binaries
#   ------------------------------------------------------------

    export PATH=/opt/bin:/opt/sbin:$PATH


#   MAKE BASIC COMMANDS BETTER
#   ------------------------------------------------------------

    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias mv='mv -iv'                           # Preferred 'mv' implementation
    alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
    alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation


#   GIT BRANCH IN BASH PROMPT
#   https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
#   ------------------------------------------------------------

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
