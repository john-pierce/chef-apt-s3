# vim: ft=ruby
# Cookbook Name:: apt-s3
# Recipe:: default
#
# Copyright (C) 2013 Narrative Science, Inc
# 
# All rights reserved - Do Not Redistribute

s3_file = cookbook_file "#{node['apt']['methods_path']}/s3" do
  source 's3'
  owner 'root'
  group 'root'
  mode '0755'
  only_if { platform_family?('debian') }
  action :nothing
end

s3_file.run_action(:create)

