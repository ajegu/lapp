default['postgresql']['enable_pgdg_yum'] = true
default['postgresql']['version'] = "9.6"
default['postgresql']['dir'] = "/var/lib/pgsql/96/data"
default['postgresql']['config']['data_directory'] = default['postgresql']['dir']
default['postgresql']['client']['packages'] = ["postgresql96", "postgresql96-devel"]
default['postgresql']['server']['packages'] = ["postgresql96-server"]
default['postgresql']['server']['service_name'] = "postgresql-9.6"
default['postgresql']['contrib']['packages'] = ["postgresql96-contrib"]
default['postgresql']['setup_script'] = "postgresql96-setup"