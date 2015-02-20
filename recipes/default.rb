package "git-core"

directory node['hub']['src_path'] do
  owner "root"
  group "root"
  mode "0755"
  recursive true
  action :create
end

bash "install hub" do
  user "root"
  cwd node['hub']['src_path']
  code <<-BASH
  if [[ ! -d hub ]]; then
    git clone #{node['hub']['repo']}
    cd hub
  else
    cd hub
    git pull origin master
  fi
  ./script/build
  cp hub #{node['hub']['install_path']}
  BASH
  action :run
end
