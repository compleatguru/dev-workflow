J2SDKDIR=/usr/lib/jvm/java-8-oracle
J2REDIR=/usr/lib/jvm/java-8-oracle/jre
PATH=$PATH:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin
JAVA_HOME=/usr/lib/jvm/java-8-oracle
DERBY_HOME=/usr/lib/jvm/java-8-oracle/db
EDITOR=vim

#ANDROID_HOME=$HOME/Android/Sdk
ANDROID_HOME=/media/david/projects/Android/Sdk

PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/platform-tools
PATH=$PATH:/media/david/projects/downloads/wkhtmltox/bin
PATH=$HOME/.cargo/bin:$PATH

# Set CAPS Lock as Control
# setxkbmap -layout us -option ctrl:swapcaps
# $HOME/nocaps-swap-capslock-control.sh

agent(){
    cd /media/david/projects/test/agent/www
}

oms(){
    cd /media/david/projects/test/oms/www
}

agensee(){
    cd /media/david/projects/0-ShipsFocus/repo/agensee/www
}

als(){
    cd /media/david/projects/als/repo/als/sf.docker/www/html
}

scss(){
    #    sass --style compact --watch $1:$2
}

# Changed prompt to folder
# Run sass
ng2_rad(){
    WORK_DIR='/var/www/html/ng2_rad'
    echo 'Changed directory to ' $WORK_DIR 
    cd $WORK_DIR
    return;
}

bal(){
    WORK_DIR='/var/www/html/bal'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
cms(){
    WORK_DIR='/var/www/html/cms'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
data(){
    WORK_DIR='/var/www/.data'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
migration(){
    WORK_DIR='/var/www/html/migrations'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
console(){
    WORK_DIR='/var/www/html/console'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
services(){
    WORK_DIR='/var/www/html/includes/services'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
work(){
    WORK_DIR='/var/www/html/cms/v3'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
work_scss(){
    WORK_DIR='/var/www/html/cms/v3'
    echo 'Running Sass monitor'
    #    sass --style compact --watch $WORK_DIR/scss:$WORK_DIR/css
    sass --style compressed --watch $WORK_DIR/scss:$WORK_DIR/css $WORK_DIR/vendor/shipsfocus/scss:$WORK_DIR/vendor/shipsfocus/css
}
v3(){
    WORK_DIR='/var/www/html/cms/v3'
    # WORK_DIR='/var/www/html/ng2.dev'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
v4(){
    WORK_DIR='/var/www/html/cms/v4'
    echo 'Changed directory to ' $WORK_DIR
    cd $WORK_DIR
    return;
}
v4_scss(){
    WORK_DIR='/var/www/html/cms/v4'
    echo 'Running Sass monitor'
    #    sass --style compact --watch $WORK_DIR/scss:$WORK_DIR/css
    sass --style compressed --watch $WORK_DIR/scss:$WORK_DIR/web/css
}
v4_tail(){
    tail -f -n100 /var/log/nginx/cms-error.log
}

miner() {
    cd /media/david/projects/www/miner
}

ssh2dow(){
    sshremote david@128.199.177.221
}
sshremote() {
    ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no $1
}

alias google-chrome='/usr/bin/google-chrome --disable-gpl-sandbox'

# For ranger app - file explorer using vim
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'

# For work environment
alias joget='cd /media/david/projects/0-ShipsFocus/repo/joget-linux-5.0.15/'
alias docs='cd /media/david/projects/als/repo/project_docs/'
alias www='cd /media/david/projects/www/'
alias devops='cd /media/david/projects/als/devops/'
alias projects='cd /media/david/projects'
alias mobile='cd /var/www/html/cms/mobile'
alias sync_remote='$HOME/scripts/sync_cms.sh'
alias sync_remote2local='$HOME/scripts/sync_cms2local.sh'

alias sync_dev_remote='$HOME/scripts/sync_dev_cms.sh'
alias sync_dev_remote2local='$HOME/scripts/sync_dev_cms2local.sh'
alias ll='ls -lh'

# to remote servers
alias ssh2dev='ssh davidyew@dev.mtechnologies.sg'
alias ssh2wilson='ssh davidyew@wilson.mtechnologies.sg'
alias ssh2david='ssh davidyew@david.mtechnologies.sg'
alias ssh2sylvia='ssh davidyew@sylvia.mtechnologies.sg'
alias ssh2demo='ssh davidyew@demo.mtechnologies.sg'
alias ssh2wp='ssh root@128.199.203.238'
# Raffi, mapproxy
alias ssh2kira='ssh davidyew@kira.mtechnologies.sg'
alias ssh2orkid='ssh davidyew@orkid.mtechnologies.sg'
# slate REST API - vesselFinder, positionsfromBooking
alias ssh2ozawa='ssh davidyew@ozawa.mtechnologies.sg'
alias ssh232gb='ssh david@172.168.0.12'
alias phantomjs='/media/david/projects/bin/phantomjs/bin/phantomjs'

ssh-add ~/.ssh/sf_rsa
