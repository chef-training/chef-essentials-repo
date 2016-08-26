# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe port(80) do
  it { should_not be_listening }
end

describe package('tree') do
  it { should be_installed }
end

describe file('/etc/motd') do
  its('content') { should match(/Property of/) }
  it { should be_owned_by 'root' }
end
