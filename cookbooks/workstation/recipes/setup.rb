package 'cowsay' do
  action :install
end

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

template '/etc/motd' do
  mode '0644'
  owner 'root'
  group 'root'
end
