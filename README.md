# chef cookbook for hub

Installs the hub command line tool for extending git with github loveliness.

## Development

To clone the source repository and run the integration tests:

```
$ git clone git@github.com:drnic/chef-hub.git hub
$ cd hub
$ bundle
$ kitchen test
```

## Release

There is a helpful rake task to share new cookbook versions.

```
$ rake share[1.2.3]
$ rake 'share[1.2.3]' # zsh
```

This will update the `metadata.rb` version, check the cookbook, upload the cookbook, tag the git repo. Much of this functionality comes from [knife-community](http://miketheman.github.io/knife-community/ "knife-community by miketheman") plugin.