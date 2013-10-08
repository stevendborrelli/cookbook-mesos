
remote_file "#{Chef::Config[:file_cache_path]}/mesos.rpm" do
    source node['mesosphere'][node['mesosphere'][:version]][node[:platform]][node[:platform_version]][:url]
    notifies :install, "rpm_package[mesos]"
end

rpm_package "mesos" do
    source "#{Chef::Config[:file_cache_path]}/mesos.rpm"
    action :install
end
