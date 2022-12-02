# Temporary Aliases
# ilionx - PiB
alias pib_res_db="cd /opt/hawaii/workspace/koena/liquibase;
    gw dropAll;
    gw update;
    curl http://localhost:8080/actuator/jolokia/exec/Koena:name\=ApplicationMBean/createTestdata/pib;
    x;"
alias pib_vup="cd /opt/hawaii/workspace/koena/vagrant;
    vagrant up;
    vagrant status;"

# VFZ - NaaS
alias en="vpn_login; x; vfz_st; vfz_en_t1;"

# VFZ
alias vfz_st="vfz_st_t1; vfz_st_t2; sysr;"
alias vfz_t="vfz_t1; vfz_t2;"

alias vfz_c_t1="ssh tunnels-nlvir1ngh01rm1" # ilionx -> Vodafone Ziggo :: SSH tunnel console 'nlvir1ngh01rm1'
alias vfz_t1="systemctl --user status sshtunnel-@tunnels-nlvir1ngh01rm1.service" # status service 1
alias vfz_en_t1="systemctl --user --now enable sshtunnel-@tunnels-nlvir1ngh01rm1.service; vfz_t1" # enable service 1
alias vfz_st_t1="systemctl --user --now stop sshtunnel-@tunnels-nlvir1ngh01rm1.service" # stop service 1

alias vfz_c_t2="ssh tunnels-nlvir1ngh01rm2" # ilionx -> Vodafone Ziggo :: SSH tunnel console 'nlvir1ngh01rm2'
alias vfz_t2="systemctl --user status sshtunnel-@tunnels-nlvir1ngh01rm2.service" # status service 2
alias vfz_en_t2="systemctl --user --now enable sshtunnel-@tunnels-nlvir1ngh01rm2.service; vfz_t2" # enable service 2
alias vfz_st_t2="systemctl --user --now stop sshtunnel-@tunnels-nlvir1ngh01rm2.service" # stop service 2

# ZSH (config)
alias szsh="source ~/.zshrc;"
alias huis="f $HOME"
alias zsha="f ~/.config/zsh"

# System
alias sysr="systemctl --user daemon-reload"
alias updt="sudo pacman -Syyu; x; sudo pacman -Syu; x;"

# Console
alias cdr="cd ~/repos"
alias cdw="cd /opt/hawaii/workspace"
alias x="clear"

# Git
alias gs="git status"
alias gst="git stash"
alias gsw="git switch"
alias gb="git branch"
alias gba="git branch --all"
alias gpull="git pull"
alias gfa="git fetch --all"

# Gradle
alias gw="./gradlew"
alias gwcb="gw clean build"

# Maven
alias mvi="mvn install -D=skipTests"

# NPM
alias nr="npm run start"
alias nl="npm run lint"
alias ni="npm install"
alias nci="npm clean install"

# SSH keys
alias sshkeys="cd ~/.ssh"
alias sshconfig="c /etc/ssh/ssh_config"

# Vagrant
alias vs="vagrant status"
alias vh="vagrant halt"
alias vss="vagrant ssh"
alias vu="vagrant up"
