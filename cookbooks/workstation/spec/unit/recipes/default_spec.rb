#
# Cookbook Name:: workstation
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'workstation::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'installs tree' do
      expect(chef_run).to install_package('tree')
    end

    it 'creates an /etc/motd' do
      expect(chef_run).to create_template('/etc/motd')
    end

  end
end
