export ALTERNATE_EDITOR='emacs -nw -q'
export BAT_THEME=base16  # OneHalfDark GitHub
export BROWSER='google-chrome'
export DAN_VIRTUALENVS_DIRECTORY=~/tmp/virtualenvs
export EDITOR='emacsclient -n'
export FZF=
export GIT_SEQUENCE_EDITOR='emacsclient'
export PAGER='less'
export PIP_INDEX_URL=
export PSQL_EDITOR="emacsclient --eval \"(setq-default major-mode 'sql-mode)\"; emacsclient"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export XENOCANTO_DATA_DIRECTORY=/tmp/xeno-quero-data
export EXA_COLORS=$(tr '\n' ':' < exa-colors)
# To add local TeX .sty files:
#   Add to /usr/local/texlive/texmf-local/tex/latex/local
#   Run `texhash`

__dan_is_osx && export MANPATH="$MANPATH:$(brew --prefix coreutils)/libexec/gnuman"
# export MPLBACKEND="module://itermplot" ITERMPLOT=rv

# export   CFLAGS=-I/usr/local/opt/libxml2/include/libxml2
# export CPPFLAGS=-I/usr/local/opt/libxml2/include/libxml2

. env-local.sh
