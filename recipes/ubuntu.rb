
remote_file "#{Chef::Config[:file_cache_path]}/mesos.deb" do
    source node['mesosphere'][node['mesosphere'][:version]][node[:platform]][node[:platform_version]][:url]
    notifies :install, "dpkg_package[mesos]"
end

dpkg_package "mesos" do
    source "#{Chef::Config[:file_cache_path]}/mesos.deb"
    action :install
end
