#
# Cookbook:: demo
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'lapp'

web_app 'demo' do
    template 'demo-vhost.conf.erb'
    enable true
end

php_fpm_pool 'demo' do
    action :install
    listen '127.0.0.1:9001'
    user 'apache'
    group 'apache'
end

service 'php-fpm' do
    action :restart
end

bash 'demo-init' do
    cwd '/app/symfony_demo'
    code <<-EOH
    php bin/console doctrine:database:create
    php bin/console doctrine:schema:create
    php bin/console doctrine:fixtures:load -q
    EOH
end