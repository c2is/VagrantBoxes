include_recipe "dotdeb"

cookbook_file "/etc/apt/sources.list.d/dotdeb-php54.list" do
  source "dotdeb-php54.list"
  mode 0644
  owner "root"
  group "root"
  notifies :run, resources(:execute => "apt-get update"), :immediately
end
