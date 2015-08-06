require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://burtlo.github.io/serverspec.github.io/resource_types.html

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#package
  #
  it 'installs vim' do
    expect(package 'vim-enhanced').to be_installed
  end

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#package
  #
  it 'installs emacs' do
    expect(package 'emacs').to be_installed
  end

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#package
  #
  it 'installs nano' do
    expect(package 'nano').to be_installed
  end

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#package
  #
  it 'installs tree' do
    expect(package 'tree').to be_installed
  end

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#package
  #
  it 'installs git' do
    expect(package 'git').to be_installed
  end

  #
  # These are some examples of using a Ruby Array to define multiple expectations
  #
  describe 'packages' do
    it 'installs all editors' do
      %w( vim-enhanced emacs nano ).each do |name|
        expect(package(name)).to be_installed
      end
    end

    it 'installs all tools' do
      %w( tree git ).each do |name|
        expect(package(name)).to be_installed
      end
    end
  end

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#file
  #
  it 'creates a message of the day' do
    expect(file '/etc/motd').to be_a_file
    expect(file '/etc/motd').to be_owned_by 'root'
    expect(file '/etc/motd').to be_grouped_into 'root'
  end
end
