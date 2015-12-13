# config valid only for current version of Capistrano
lock '3.4.0'

set :stages, %w(prod)

set :application, 'babylone-front'
set :deploy_to, "/var/www/#{fetch(:application)}"
set :repo_url, 'git@github.com:christophemy/babylone.git'
set :repo_tree, 'babylone-front'

set :log_path, "var/logs"
set :cache_path, "var/cache"
set :symfony_console_path, 'bin/console'
set :linked_files, fetch(:linked_files, []).push('app/config/parameters.yml')
set :linked_dirs, [fetch(:log_path), "var/sessions", "web/uploads"]

set :log_level, :info

set :ssh_user, 'www-data'
set :ssh_options, {
  forward_agent: true,
}

set :branch, 'master'
set :keep_releases, 3

set :composer_install_flags, '--prefer-dist --no-interaction --optimize-autoloader'
