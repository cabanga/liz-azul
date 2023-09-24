# config valid for current version and patch releases of Capistrano
lock "~> 3.17.0"

set :application, "liz_azul"
set :repo_url, "git@github.com:cabanga/liz-azul.git"

set :deploy_to, "/opt/#{fetch :application}"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :default_env, {
  path: "$HOME/nodejs/bin:$PATH"
}