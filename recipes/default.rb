package "git"

directory node.hub.src_path do
  owner "root"
  group "root"
  mode "0755"
  recursive true
  action :create
end

bash "install hub" do
  user "root"
  cwd node.hub.src_path
  code <<-BASH
  if [[ ! -d hub ]]; then
    git clone https://github.com/defunkt/hub.git
    cd hub
  else
    cd hub
    git pull origin master
  fi
  rake install prefix=#{node.hub.install_path}
  BASH
  action :run
end
