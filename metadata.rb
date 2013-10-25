name "hub"
version "1.0.4"
description "git + hub = github"
long_description  IO.read(File.expand_path('../README.md', __FILE__))
maintainer "Dr Nic Williams"
maintainer_email "drnicwilliams@gmail.com"
license "MIT"

attribute "hub/install_path",
  display_name: "Install path",
  description: "Base path where bin/hub will be installed",
  type: "string",
  required: "optional"

attribute "git/src_path",
  display_name: "Source path",
  description: "Path where hub git repo will be cloned",
  type: "string",
  required: "optional"
