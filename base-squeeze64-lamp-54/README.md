## PHP 5.4 LAMP server based on Debian Squeeze 64

### Download

[https://dl.dropbox.com/s/m3cnudvkwmayhwh/base-squeeze64-lamp-54.box?dl=1](https://dl.dropbox.com/s/m3cnudvkwmayhwh/base-squeeze64-lamp-54.box?dl=1)

### Config

```shell
$ cat /etc/apache2/sites-enabled/apache2config.conf
<VirtualHost *:80>
  ServerName localhost
  DocumentRoot /vagrant/web
  DirectoryIndex index.php
  
  <Directory /vagrant/web>
    Options Indexes FollowSymLinks MultiViews
    AllowOverride All
    Order allow,deny
    Allow from all
  </Directory>

  LogLevel info
</VirtualHost>
```
Works fine with this [Vagrantfile](https://github.com/c2is/VagrantBoxes/blob/master/your-lamp-server/Vagrantfile).  
Especially with Symfony projects (thanks to the `web` directory).

### Versions

##### PHP

```shell
$ php -v
PHP 5.4.8-1~dotdeb.0 (cli) (built: Oct 18 2012 21:19:48) 
Copyright (c) 1997-2012 The PHP Group
Zend Engine v2.4.0, Copyright (c) 1998-2012 Zend Technologies
```

Specific php modules :

```shell
php5-mysql
php5-intl
php5-curl
php5-memcache
php5-geoip
```

##### MySql

```shell
$ mysql --version
mysql  Ver 14.14 Distrib 5.5.28, for debian-linux-gnu (x86_64) using readline 6.1
```

##### Apache

```shell
$ /usr/sbin/apache2 -v
Server version: Apache/2.2.16 (Debian)
Server built:   Sep 13 2012 02:54:14
```

Apache modules :

```shell
$ /usr/sbin/apache2 -t -D DUMP_MODULES
Loaded Modules:
 core_module (static)
 log_config_module (static)
 logio_module (static)
 mpm_prefork_module (static)
 http_module (static)
 so_module (static)
 alias_module (shared)
 auth_basic_module (shared)
 authn_file_module (shared)
 authz_default_module (shared)
 authz_groupfile_module (shared)
 authz_host_module (shared)
 authz_user_module (shared)
 autoindex_module (shared)
 cgi_module (shared)
 deflate_module (shared)
 dir_module (shared)
 env_module (shared)
 expires_module (shared)
 headers_module (shared)
 mime_module (shared)
 negotiation_module (shared)
 php5_module (shared)
 reqtimeout_module (shared)
 rewrite_module (shared)
 setenvif_module (shared)
 status_module (shared)
Syntax OK
```

##### Memcached

```shell
$ telnet localhost 11211
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
version
VERSION 1.4.5
```

##### Git

```shell
$ git --version
git version 1.7.2.5
```

##### Curl

```shell
$ curl --version
curl 7.21.0 (x86_64-pc-linux-gnu) libcurl/7.21.0 OpenSSL/0.9.8o zlib/1.2.3.4 libidn/1.15 libssh2/1.2.6
Protocols: dict file ftp ftps http https imap imaps ldap ldaps pop3 pop3s rtsp scp sftp smtp smtps telnet tftp 
Features: GSS-Negotiate IDN IPv6 Largefile NTLM SSL libz
```