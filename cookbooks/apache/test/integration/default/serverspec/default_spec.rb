require 'spec_helper'

describe 'apache::default' do
  describe port(80) do
    it { should be_listening }
  end

  describe command('curl http://localhost') do
    its(:stdout) { should match /Hello, world!/ }
  end
end
