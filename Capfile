load 'deploy' if respond_to?(:namespace) # cap2 differentiator
Dir['vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }

load 'config/deploy' # remove this line to skip loading any of the default tasks


load 'deploy' if respond_to?(:namespace) # cap2 differentiator
load 'config/deploy'


namespace :deploy do
  task :start, :roles => :app do
    run "touch #{deploy_to}/current/tmp/restart.txt"
  end

  task :restart, :roles => :app do
    run "touch #{deploy_to}/current/tmp/restart.txt"
  end

  task :link_db do
    run "rm -rf ~/public_html;ln -s #{deploy_to}/current/public ~/public_html"
    run "cd #{deploy_to}/current; bundle install"
    run "cp #{deploy_to}/shared/database.yml #{deploy_to}/current/config/database.yml"
  end
end

after("deploy:symlink", "deploy:link_db")
