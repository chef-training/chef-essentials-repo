
#
# The execute resource, named "apt-get update", is run.
#
# @see https://docs.chef.io/resource_execute.html
#
execute "apt-get update"

#
# The package, named "vim", is installed
#
# @see https://docs.chef.io/resource_package.html
#
package "vim"

#
# The package, named "emacs", is installed
#
# @see https://docs.chef.io/resource_package.html
#
package "emacs"

#
# The package, named "nano", is installed
#
# @see https://docs.chef.io/resource_package.html
#
package "nano"

#
# The package, named "tree", is installed
#
# @see https://docs.chef.io/resource_package.html
#
package "tree"

#
# The package, named "git", is installed
#
# @see https://docs.chef.io/resource_package.html
#
package "git"

#
# The template, named "/etc/motd" is created 
#   with the source "motd.erb"
#
# @see https://docs.chef.io/resource_template.html
#
# The template file, named 'motd.erb' can be found in the
#   the templates folder under default. This means for all platforms:
#
# @see https://docs.chef.io/resource_template.html#file-specificity
#
template "/etc/motd" do
  source "motd.erb"
end
