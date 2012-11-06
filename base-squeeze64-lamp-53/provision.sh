curl https://raw.github.com/gist/3951575/f7ac48d0cc86a5fbe1b7ef472520ce595ee0a8c7/gistfile1.txt > /usr/local/bin/createMySQLDatabase  2> /dev/null
chmod +x /usr/local/bin/createMySQLDatabase
echo "sudo tail -f /var/log/apache2/error.log" > /usr/local/bin/traceErrors
chmod +x /usr/local/bin/traceErrors
