set :deploy_config_path, File.expand_path('deploy/deploy.rb')
set :stage_config_path, File.expand_path('deploy/stages')

# Load DSL and set up stages
require 'capistrano/setup'

require 'capistrano/deploy'
require 'capistrano/symfony'

Dir.glob('capistrano/tasks/*.rake').each { |r| import r }
