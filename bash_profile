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
