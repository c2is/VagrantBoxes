execute "apt-get update" do
  action :nothing
end

cookbook_file "/etc/apt/sources.list.d/lenny.list" do
  source "lenny.list"
  mode 0644
  owner "root"
  group "root"
end

cookbook_file "/etc/apt/preferences.d/lenny" do
  source "lenny.preferences"
  mode 0644
  owner "root"
  group "root"
  notifies :run, resources(:execute => "apt-get update"), :immediately
end
