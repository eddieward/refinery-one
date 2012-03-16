set :application, 'engel_tax'
set :domain, '50.22.11.12'
set :user, 'engeltax'

set :server_hostname, '50.22.11.12'


set :scm_passphrase,  Proc.new { Capistrano::CLI.password_prompt('Git Password: ') }
set :git_account, 'eddieward'
set :repository,  "git@github.com:#{git_account}/#{application}.git"
set :scm, "git"


ssh_options[:keys] = %w(/home/eddie/.ssh/id_rsa)

default_run_options[:pty] = true

set :user, user

ssh_options[:forward_agent] = true
set :branch, "master"
set :deploy_via, :remote_cache
set :git_shallow_clone, 1
set :git_enable_submodules, 1
set :use_sudo, false
set :deploy_to, "/home/#{user}/#{application}"


role :web, server_hostname
role :app, server_hostname
role :db, server_hostname, :primary => true