ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __FILE__)

CATEGORY = "Utilities"

require "rubygems"
require "bundler"
Bundler.setup(:default, :test, :development, :integration)

require "fileutils"
require "kitchen"
include FileUtils

desc "Share cookbook"
task :release do
  project_folder = File.expand_path("..", __FILE__)
  name, _ = Kitchen::MetadataChopper.extract("./metadata.rb")
  parent_folder = "/tmp/cookbooks"
  tmp_cookbook_folder = File.join(parent_folder, name)
  rm_rf(tmp_cookbook_folder)
  mkdir_p(parent_folder)
  cp_r(project_folder, tmp_cookbook_folder)
  chdir(parent_folder) do
    sh "knife cookbook site share #{name} #{CATEGORY} -o ."
  end
end