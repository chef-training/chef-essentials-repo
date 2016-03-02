#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [{
    'hostname' => 'knife node show node1 -a cloud.public_hostname',
    'ipaddress' => 'knife node show node1 -a cloud.public_ips',
    'port' => 80,
    'ssl_port' => 80
  }]

include_recipe 'haproxy::default'
