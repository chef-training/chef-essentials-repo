require 'spec_helper'

describe 'workstation::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  #
  # @see http://serverspec.org/resource_types.html#package
  #
  describe package('vim') do
    it { should be_installed }
  end

  #
  # @see http://serverspec.org/resource_types.html#package
  #
  describe package('emacs') do
    it { should be_installed }
  end

  #
  # @see http://serverspec.org/resource_types.html#package
  #
  describe package('nano') do
    it { should be_installed }
  end

  #
  # @see http://serverspec.org/resource_types.html#package
  #
  describe package('tree') do
    it { should be_installed }
  end

  #
  # @see http://serverspec.org/resource_types.html#package
  #
  describe package('git') do
    it { should be_installed }
  end


  #
  # These are some examples of using a Ruby Array to define multiple expectations
  #
  describe "packages" do
    it "installs all editors" do
      %w[ vim emacs nano ].each do |name|
        expect(package(name)).to be_installed
      end
    end

    it "installs all tools" do
      %w[ tree git ].each do |name|
        expect(package(name)).to be_installed
      end
    end


  end

  #
  # @see http://serverspec.org/resource_types.html#file
  #
  describe file('/etc/motd') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

end