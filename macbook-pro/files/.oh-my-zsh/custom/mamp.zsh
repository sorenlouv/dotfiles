#########################################
# Mamp:
#########################################

# Add MAMP's php version to PATH
export PATH=/Applications/MAMP/bin/php/php5.5.10/bin:$PATH

# Add MAMP's mysql to PATH
export PATH=/Applications/MAMP/Library/bin:$PATH

alias mamp-vhost='$EDITOR /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf'
alias mamp-php='$EDITOR /Applications/MAMP/bin/php/php5.5.10/conf/php.ini'