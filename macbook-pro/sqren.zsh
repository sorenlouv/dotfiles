#########################################
# Misc:
#########################################
# Make Sublime text default editor
export EDITOR=sublime

#########################################
# Tradeshift:
#########################################

# TS home folder
export TS_HOME=~/ts-code/

# tell Maven where Java7 is
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# Riak needs at least a ulimit of 4096
ulimit -n 10240

# Increase allowed memory consumption for Maven
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=1024m"
export GRAILS_OPTS="-server -Xmx1024M -XX:MaxPermSize=512m"
export SBT_OPTS="-Xmx1024m -XX:MaxPermSize=256m"

# Apptoolw alias
alias apptoolw='~/ts-code/Apps/scripts/apptoolw'

#########################################
# Homebrew:
#########################################

# Homebrew Github Token
# Obtained from https://github.com/settings/applications#personal-access-tokens
# Docs: https://github.com/Homebrew/homebrew/wiki/Common-Issues#brew-search-errors-out
export HOMEBREW_GITHUB_API_TOKEN="a5a4869d6daabfa9c3376a13d81ceabac6ca6209"

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

