package 'cowsay' do
  action :install
end

package 'tree' do
  action :install
end

file '/etc/motd' do
  content 'Property of ...'
end
