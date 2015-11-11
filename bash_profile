  ---------------------------------------------------------------------------
#
#  BASH configurations and aliases for my iOmega HMNHD in /etc/profile
#
#  ---------------------------------------------------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="\u@\h:># "

#   Set Paths
#   ------------------------------------------------------------

    export PATH="/opt/bin/:local/bin:/usr/sbin:/usr/bin:/sbin:/bin"


#   -----------------------------
#   MAKE BASIC COMMANDS BETTER
#   -----------------------------

    alias cp='cp -iv'                           # Preferred 'cp' implementation
    alias mv='mv -iv'                           # Preferred 'mv' implementation
    alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
    alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
