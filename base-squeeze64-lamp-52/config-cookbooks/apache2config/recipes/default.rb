app_name    = 'apache2config'
app_config  = node[app_name]

apache_site "000-default" do
  enable false
end

web_app app_name do
  server_name     app_config['server_name']
  document_root   app_config['document_root']
  directory_index app_config['directory_index']
end
