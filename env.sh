export BROWSER='google-chrome'
export EDITOR='emacsclient -n'
export GIT_SEQUENCE_EDITOR='emacsclient'
export PSQL_EDITOR="emacsclient --eval \"(setq-default major-mode 'sql-mode)\"; emacsclient"
export PAGER='less'

. env-local.sh
