# aliases
alias l='ls -CF'
alias ll='ls -alF'
alias gs='git addremove && git status'

# codespaces
export GIT_COMMITTER_NAME=leebyron
export GIT_COMMITTER_EMAIL=lee@leebyron.com
if [ -n "$PAT" ]; then export GITHUB_TOKEN=$PAT; fi
