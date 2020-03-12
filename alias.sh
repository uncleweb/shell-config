alias ..='cd ..'
alias R='R --silent --no-restore --no-save --vanilla'
alias acurl='curl --user $(cat ~/.ssh/auth)'
alias agp='ag --python'
alias b='git branch-by-date|head'
alias black-diff='(pyenv shell 3.7.0 && cd $(git rev-parse --show-toplevel) && black --skip-string-normalization -l100 $(git diff --name-only master...))'
alias black-all="(cd $(git rev-parse --show-toplevel) && git ls-files '**/*.py' | xargs black --skip-string-normalization -l100 $(git diff --name-only master...))"
alias cat='bat'
alias cb='cargo build'
alias cdg='cd $(git rev-parse --show-toplevel)'
alias cdt='cd "$_"'
alias cdtemp='cd $(mktemp -d)'
alias chrome='open -a /Applications/Google\ Chrome.app'
alias clipboard-restart='killall pboard'
alias cog='open -a /Applications/Cog.app'
alias column='~/src/column/column'
alias ctl='(column -t | less -SX) <'
alias d='docker'
alias db='docker build'
alias dc='docker-compose'
alias de='docker exec'
alias del='docker exec -it $(docker ps -q | head -n1) bash'
alias di='docker images'
alias docker-clean='docker-rm-all && docker-prune'
alias docker-prune='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-rm-all='docker rm -f $(docker ps -a -q)'
alias dps='docker ps'
alias dr='docker run'
alias drl="docker-run-last"
alias dtruss-emacs="(sudo filebyproc.d 2>/dev/null) | g -i emacs"
alias e='emacsclient-dwim $(fzf-maybe git ls-files)'
alias ee="emacs -nw -q"
alias ef='emacs-find-file'
alias eg='emacs-magit-status'
alias egd='emacs-magit-diff'
alias egr='emacs-grep'
alias egs='emacs-magit-show'
alias emacs-app='open -n /usr/local/Cellar/emacs-mac/emacs-26.3-z-mac-7.7/Emacs.app/'
alias es='emacs-grep'
alias f='fzf'
alias facet='rlwrap facet'
alias ff='find . -type f -iname'
alias fromip="who | grep \"^$USER\" | sed 1q | perl -n -e 's,.*\(([0-9.]+)\),\1, and print'"
alias g='rg'
alias ga='git add'
alias gaf='git add $(git diff --name-only) && git commit --amend -C HEAD'
alias gb='git branch'
alias gbc='git branch --contains'
alias gbd='git-branch-by-date'
alias gbdh='git-branch-by-date|head'
alias gbl='git blame'
alias gc='git checkout $(fzf-maybe git branch --sort=-committerdate)'
alias gcal='gcalcli calw --calendar davison@counsyl.com'
alias gcbd='git branch -D dev 2> /dev/null ; git checkout -b dev ; git checkout -'
alias gcbz='git branch -D z 2> /dev/null ; git checkout -b z ; git checkout -'
alias gcl='git clean'
alias gcln='git clean -nd'
alias gclo='git clone'
alias gcm='git checkout master'
alias gcmm='git branch master origin/master && git checkout master'
alias gco='git commit'
alias gcoa='git commit --amend'
alias gcof='git-commit-file'
alias gconf='git config'
alias gconfl='git config -l'
alias gcp='git cherry-pick $(git branch | fzf-maybe)'
alias gcpa='git cherry-pick --abort'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdcs='git diff --cached --stat=200,200'
alias gdcw='git diff --cached --word-diff=color'
alias gdm='git diff master...'
alias gdp='git-diff-prod'
alias gdob='git diff origin/$(git rev-parse --abbrev-ref HEAD)'
alias gdsob='git diff --stat origin/$(git rev-parse --abbrev-ref HEAD)'
alias gds='git diff --stat=200,200'
alias gdsc='git diff --cached --stat=200,200'
alias gdsm='git diff --stat=200,200 master...'
alias gdw='git diff --word-diff=color'
alias gdwc='git diff --cached --word-diff=color'
alias gdww='git diff --word-diff=color --word-diff-regex="[a-zA-z_]+"'
alias gdwwc='gdww --cached'
alias gdz='git diff z'
alias gf='git fixup'
alias gfc='git-fuzzy-checkout'
alias gh='git-branch-by-date|head'
alias ghci='ghci -fwarn-incomplete-patterns'
alias git-init='git init && git set-email-public && git commit --allow-empty -m "∅"'
alias gitk-all='gitk --all --simplify-by-decoration'
alias git-fixup="git add . && git show --stat && git diff --cached && read && git commit --amend -C HEAD"
alias gl='git log --stat'
alias gla='gl --format="%an"'
alias gld='git log --author=dan'
alias glf='git log --pretty=fuller'
alias glh='git log --oneline -n 20'
alias glme='gl --author=dan'
alias glob='git log origin/$(git rev-parse --abbrev-ref HEAD)'
alias glp='gl -p'
alias gls='gl --stat'
alias glsp='gl -p --stat'
alias gm='git merge'
alias gnp='git --no-pager'
alias google-chrome='open -a /Applications/Google\ Chrome.app'
alias gp='git pull'
alias gpo='git pull origin'
alias gpob='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gpom='git fetch origin master && git branch -d master && git branch master origin/master'
alias gprob='git pull --rebase origin $(git rev-parse --abbrev-ref HEAD)'
alias gr1='git reset HEAD~1'
alias gr2='git reset HEAD~2'
alias gr='git reset'
alias grb='git rebase'
alias grba='grb --abort'
alias grbc='grb --continue'
alias grbi='grb --interactive'
alias gre='git remote'
alias grep='grep --color=auto'
alias gres='git remote -v show'
alias grh='git reset --hard'
alias grhh='git reset --hard HEAD'
alias grh1='echo $(git rev-parse HEAD) && git reset --hard HEAD~1'
alias grhob='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'
alias gri='grb --interactive'
for i in 1 2 3 4 5 6 7 8 9; do
    alias gri${i}="grb --interactive HEAD~${i}"
done
alias grim='gri master'
alias griob='grb --interactive origin/$(git rev-parse --abbrev-ref HEAD)'
alias grhob='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'
alias grve='git revert --no-edit'
alias grv1='grve HEAD && gr1'
alias gs='git show'
for i in 1 2 3 4 5 6 7 8 9; do
    alias gs${i}="git show HEAD~${i}"
done
alias gss='git show --stat=256,256'
alias gst='git status'
alias gsta='git stash apply && git diff'
alias gstd='git stash drop'
alias gstk='git stash save --keep-index'
alias gstl='git stash list'
alias gstp='git stash pop  && git diff'
alias gstr='git stash save && git stash drop stash@{1}'
alias gsts='git stash save `date "+%Y-%m-%d %H:%M"`'
alias gstsd='git stash save debugging'
alias gstsp='git stash show -p'
alias gsw='git show --word-diff=color'
alias gsww='git show --word-diff=color --word-diff-regex="[a-zA-z_]+"'
alias h='(hist | tr -s " " | cut -d " " -f 4-) | fzf --no-sort --exact | tr -d "\n" | pbcopy'
alias hset='redis-cli hset'
alias hx='eval $((hist | tr -s " " | cut -d " " -f 4-) | fzf --no-sort --exact)'
alias hibernateoff="sudo pmset -a hibernatemode 0"
alias hibernateon="sudo pmset -a hibernatemode 5"
alias hist='tac $(ls ~/dandavison7@gmail.com/shell_history/bash_eternal_history_0* | tac)'
alias hubc='open https://github.counsyl.com/dev/website/commit/$(git rev-list -n1 HEAD)'
alias ip=ipython
alias isort='isort --force_single_line_imports --lines 999999 --dont-skip __init__.py'
alias jp=jsonpipe
alias k=kill-fzf
alias l='less'
alias latex='latex -shell-escape -interaction nonstopmode -output-directory /tmp/latex-output'
alias le='lein'
alias ler='lein repl'
alias less='less -SX'
alias l1='ls -1'
alias ll='ls -l'
alias lr='latexrun --latex-args="-shell-escape" -O .build'
alias ls="exa --git-ignore --group-directories-first --ignore-glob '*.pyc|__pycache__|dist|build|dask-worker-space'"
alias gls='/usr/local/opt/coreutils/libexec/gnubin/ls -N --color=tty --hide="*.pyc" --hide=__pycache__'  # --hide="*."{aux,out,log} if you get very annoyed by LaTeX
alias lt='ls -lht'
alias lth='ls -lht | head'
alias lsof-ports='lsof -i -n -P'
alias m='cd $(git rev-parse --show-toplevel) && make'
alias make-explain="make -rnd | perl -p -e 's,(^ +),\1\1\1\1,'"
alias mathematica='open -a /Applications/Mathematica.app'
alias mk='mkdir -p'
alias mv-desktop-last='mv ~/Desktop/"$(ls -t ~/Desktop/| head -n1)"'
alias np=ping-world
alias npu='until ping-world; do sleep 1; done'
alias nwp=wifi-poke
alias path='readlink -f'
alias pdfjoin='pdfjoin --rotateoversize false'
alias pdflatex='pdflatex -shell-escape -interaction nonstopmode'
alias pf='pip freeze'
alias pi='pip install'
alias pip='pip --disable-pip-version-check'
alias play='open -a /Applications/Cog.app'
alias ps-me='ps -u `whoami`'
alias ps1='ps -Af f'
alias psl='ps auxwww | less'
# top $(ps aux | grep postgres | grep -v grep | awk '{print "-p"$2}')
alias pu='pip uninstall'
alias pupf='pip uninstall -y $(pip freeze)'
alias preview='open -a /Applications/Preview.app'
alias pv='python-virtualenv-activate'
alias pwdr='pwd | sed "s,.*$HOME/,,"'
alias pyz='py /tmp/z.py'
alias reload='. ~/.bashrc'
alias rgf='rg --files'
alias rm-tex='rm -f *.{aux,lof,log,lot,out,toc}'
alias rm-pyc="find . -type f -name '*.pyc' -delete"
alias rg='rg -M 1000'
alias rn='rename'
alias rs='rsync -z --progress'
alias s='cd ~/src/elaenia/sylph'
alias sg='stack ghci'
alias skim='open -a /Applications/Skim.app'
alias ssh='ssh -A'
alias sw='switchto website'
alias t='ls -T'
alias ta='tmux attach'
alias tail-messages='tail -f /var/log/messages'
alias tcs='tmux-current-session'
alias tl='topleft'
alias tls='tmux list-sessions -F "#S"'
alias tmux-current-session='tmux display-message -p "#S"'
alias tns='tmux new-session'
alias tsc='tmux switch-client -l'
alias virtualenv-temp='rm -fr /tmp/v && virtualenv /tmp/v && . /tmp/v/bin/activate'
alias vpro='vagrant provision'
alias vssh='vagrant ssh'
alias x='xml2yaml'
alias xenops-cache-size='fd . /tmp/xenops-cache | wc -l'
alias xhyve-nsenter='docker run -it --privileged --pid=host debian nsenter -t 1 -m -u -n -i'
