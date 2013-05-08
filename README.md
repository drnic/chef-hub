# chef cookbook for hub

Installs the hub command line tool for extending git with github loveliness.

## Release

There is a helpful rake task to share new cookbook versions.

```
$ rake share[1.2.3]
$ rake 'share[1.2.3]' # zsh
```

This will update the `metadata.rb` version, check the cookbook, upload the cookbook, tag the git repo. Much of this functionality comes from [knife-community](http://miketheman.github.io/knife-community/ "knife-community by miketheman") plugin.