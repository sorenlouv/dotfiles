#########################################
# Misc.:
#########################################

# Make Sublime Text default editor
export EDITOR=sublime

# Add Homebrew to path
export PATH=/usr/local/bin:$PATH

# Add MAMP's php version to PATH
export PATH=/Applications/MAMP/bin/php/php5.5.14/bin:$PATH

# Java home
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Autojump tab completion
autoload -U compinit && compinit

# Grunt tab completion
eval "$(grunt --completion=zsh)"

#########################################
# Pagodabox:
#########################################

# SSH Tunnel
function pagoda-ssh {
   ssh $1@pagodabox.com;
}

# SQL Tunnel
function pagoda-db {
  pagoda -a $1 tunnel db1;
}

# Transfer files (scp)
function pagoda-upload {
  scp -r $2  $1@pagodabox.com:~/shared/$( dirname ${2} );
}

# Fetch files (scp)
function pagoda-download {
  scp -r $1@pagodabox.com:~/shared/$2 $( dirname ${2} );
}

function pagoda-upload-to-remote {
    PAGODA_DB_USER=$1
    PAGODA_DB_PASS=$2
    PAGODA_DB_NAME=$3
    SQL_DUMP=$4

    # mysqladmin -u$PAGODA_DB_USER -h 127.0.0.1 --port 3307 -p drop $PAGODA_DB_NAME
    mysql -u$PAGODA_DB_USER -h 127.0.0.1 --port 3307 -p$PAGODA_DB_PASS --database=$PAGODA_DB_NAME < $SQL_DUMP
}

function pagoda-download-from-remote {
    PAGODA_DB_USER=$1
    PAGODA_DB_NAME=$2

    mysqldump -u $PAGODA_DB_USER -h 127.0.0.1 --port 3307 -p --databases $PAGODA_DB_NAME > $PAGODA_DB_NAME.sql
}

#########################################
# Apache:
#########################################

alias mamp-vhost='$EDITOR /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf'
alias mamp-php='$EDITOR /Applications/MAMP/bin/php/php5.5.14/conf/php.ini'
