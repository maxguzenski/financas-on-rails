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

#role :web, "for.guzenski.com.br"
#role :app, "for.guzenski.com.br"
#role :db,  "mysql.guzenski.com.br", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

#namespace :deploy do
#  task :start {}
#  task :stop {}
#  task :restart, :roles => :app, :except => { :no_release => true } do
#    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#  end
#end

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end