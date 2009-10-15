default_run_options[:pty] = true

set :user, 'guzenski'
set :domain, 'guzenski.com.br'
set :application, 'financas-on-rails'

set :deploy_to, "/home/guzenski/for.guzenski.com.br"
set :deploy_via, :remote_cache

set :repository,  "git://github.com/maxguzenski/financas-on-rails.git"
set :scm, :git
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web
role :db, domain, :primary => true

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end