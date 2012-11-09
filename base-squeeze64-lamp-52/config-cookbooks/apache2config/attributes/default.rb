override['apache']['group'] = 'vagrant'
override['apache']['user'] = 'vagrant'

default['apache2config']['server_name']     = 'localhost'
default['apache2config']['document_root']   = '/vagrant'
default['apache2config']['directory_index'] = 'index.php'