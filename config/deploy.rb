set :application, "financas-on-rails"
set :repository,  "git://github.com/maxguzenski/financas-on-rails.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "for.guzenski.com.br" 
role :app, "for.guzenski.com.br"
role :db,  "mysql.guzenski.com.br", :primary => true # This is where Rails migrations will run
role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start {}
  task :stop {}
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end