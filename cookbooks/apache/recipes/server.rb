
#
# The package, named "httpd" is installed
#
# @see https://docs.chef.io/resource_package.html
#
package 'httpd'

#
# The template, named "/var/www/html/index.html" is created
#   with the source "index.html.erb"
#
# @see https://docs.chef.io/resource_template.html
#
# The template file, named 'index.html.erb' can be found in the
#   the templates folder under default. This means for all platforms:
#
# @see https://docs.chef.io/resource_template.html#file-specificity
#
template '/var/www/html/index.html' do
  source 'index.html.erb'
end

#
# The service, named "httpd", is enabled and started.
#
# @see https://docs.chef.io/resource_service.html
#
service 'httpd' do
  action [:enable, :start]
end
