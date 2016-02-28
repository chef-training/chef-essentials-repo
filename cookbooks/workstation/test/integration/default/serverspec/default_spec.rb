require 'spec_helper'

describe 'workstation::default' do
  describe package('tree') do
    it { should be_installed }
  end
end
