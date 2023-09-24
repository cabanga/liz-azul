# Load DSL and set up stages
require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"

require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/rbenv'

set :rbenv_type, :user
set :rbenv_ruby, '3.0.1'


install_plugin Capistrano::SCM::Git

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }