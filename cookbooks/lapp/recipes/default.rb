#
# Cookbook:: lapp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'apache2'
include_recipe 'apache2::mod_proxy'
include_recipe 'apache2::mod_proxy_fcgi'

include_recipe 'postgresql::server'

include_recipe 'yum-remi'

include_recipe 'php'

include_recipe 'git'
include_recipe 'yum-epel'
include_recipe 'nodejs'
include_recipe 'composer'
include_recipe 'phpunit'

execute 'grunt' do
    command 'sudo npm install -g grunt'
end

execute 'bower' do
    command 'sudo npm install -g bower'
end