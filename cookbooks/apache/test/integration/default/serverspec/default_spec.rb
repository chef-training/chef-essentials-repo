require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://burtlo.github.io/serverspec.github.io/resource_types.html

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#port
  #
  it 'is listening on port 80' do
    expect(port 80).to be_listening
  end

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#command
  #
  it 'serves a web page' do
    expect(command('curl http://localhost').exit_status).to eq 0
  end

  #
  # @see http://burtlo.github.io/serverspec.github.io/resource_types.html#command
  #
  it 'serves up the home page' do
    expect(command('curl http://localhost').stdout).to match /Hello, world!/
  end
end
