#
# Cookbook:: test1
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package %w(krb5-kdc krb5-admin-server) 

execute 'krb5_newrealm'
