
#Pull in the proper platform recipe to install mesosphere packages

#include_attribute "mesosphere"

include_recipe "mesos::#{node['platform']}" 

