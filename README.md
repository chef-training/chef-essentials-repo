# Chef Essentials Linux - Repository

This repository contains all the completed code for the Chef Essentials course.

## How to use this Repository

Currently the master branch points to the completed work from the first 7 modules. This module 09 - Chef Server requires the two cookbooks created during the first day.

However, the entire content is here and accessible through branches.

1. View the branches
2. Choose the branch that matches the step in the content you want completed
3. Checkout that branch

Example: I want to pick up right at the beginning of module 05 (Testing Cookbooks)

```
# Show all branches
$ git branch
# Select the branch ...
$ git checkout 05-00-MODULE_05
```

Example: I want to move to right after completing the third exercise in module 06 (Node Data)

```
# Show all branches
$ git branch
# Select the branch ...
$ git checkout 06-03-workstation_version_0.2.0
```

### Available Restore Points

```
02-01-cowsay
02-02-hello_world
02-03-hello_world_with_permissions
02-04-setup_complete
03-00-MODULE_03
03-01-setup_install_git
03-02-workstation_cookbook_with_setup_recipe
03-03-web_server_cookbook
04-00-MODULE_04
04-01-workstation_default_include_setup
04-02-apache_default_include_server
05-00-MODULE_05
05-01-workstation_kitchen_configuration
05-02-apache_kitchen_configuration
05-03-workstation_cookbook_first_test
05-04-workstation_cookbook_remaining_tests
05-05-apache_cookbook_tests
06-00-MODULE_06
06-01-workstation_setup_recipe_with_hardcoded_values
06-02-workstation_setup_recipe_with_node_attributes
06-03-workstation_version_0.2.0
06-04-apache_cookbook_server_recipe_with_node_attributes
07-00-MODULE_07
07-01-apache_cookbook_template_resource
07-02-apache_cookbook_version_0.2.1
07-03-workstation_cookbook_template_resource
07-04-workstation_cookbook_version_0.2.1
10-00-MODULE_10
10-01-myhaproxy_cookbook
11-00-MODULE_11
11-01-myhaproxy_version_0.2.0
12-00-MODULE_12
12-01-role_for_load_balancer
12-02-role_for_web_servers
13-00-MODULE_13
13-01-myhaproxy_default_updated_to_dynamic_based_on_roles
13-02-myhaproxy_version_1.0.0
14-00-MODULE_14
14-01-production_environment
14-02-acceptance_environment
14-03-myhaproxy_default_search_includes_environments
14-04-production_now_myhaproxy_1.0.1
COMPLETE
master
```
