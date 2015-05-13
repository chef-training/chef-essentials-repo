require 'spec_helper'

describe 'apache::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  #
  # @see http://serverspec.org/resource_types.html#port
  #
  describe port(80) do
    it { should be_listening }
  end

  #
  # @see http://serverspec.org/resource_types.html#command
  #
  describe command('curl http://localhost') do
    its(:stdout) { should match /Hello, world!/ }
  end
end