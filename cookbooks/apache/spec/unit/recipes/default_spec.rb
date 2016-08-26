#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end


    it 'installs the correct package' do
      expect(chef_run).to install_package('apache2')
    end

    it 'creates an default html file' do
      expect(chef_run).to create_template('/var/www/html/index.html')
    end

    it 'starts the service' do
      expect(chef_run).to start_service('apache2')
    end

    it 'enables the service' do
      expect(chef_run).to enable_service('apache2')
    end
  end
end
