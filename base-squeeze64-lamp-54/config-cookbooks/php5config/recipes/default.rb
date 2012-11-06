bash "Define date.timezone" do
    code <<-EOH
    echo 'date.timezone = "Europe/Paris"' | sudo tee -a /etc/php5/cli/php.ini
    echo 'date.timezone = "Europe/Paris"' | sudo tee -a /etc/php5/apache2/php.ini
    EOH
end

["php5-curl", "php5-memcache", "php5-mysql", "php5-geoip", "php5-intl"].each do |p|
    package p do
        action :install
    end
end
