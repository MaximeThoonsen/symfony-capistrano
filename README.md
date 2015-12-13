# Symfony3 Capistrano
A working example of how to deploy symfony3 with capistrano 

## Requirements

You need to have ruby installed on your machine

Capistrano installation
-----------------------

First you need to install Capistrano. To do so you have to install the Bundler gem and install all the required gems:

```bash
gem install bundler
bundle install
```

Check that Capistrano 3 is well installed:

```bash
bundle exec cap -v
```

Deploy
------

To deploy the application you have to run the cap command with Bundler from the application folder:

```bash
bundle exec cap prod deploy
```

Replace ```prod``` by one of the available environments, staging for example.


Troubleshooting
----------------

__Capistrano can't run ```git ls-remote```?__

Make sure that your ssh agent knows your public key:

```bash
ssh-add
```
