set :stages, %w(zh)
set :default_stage, 'zh'

require 'mina/multistage'
require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rvm'    # for rvm support. (http://rvm.io)
require 'mina/unicorn'
require 'mina_sidekiq/tasks'

# Manually create these paths in shared/ (eg: shared/config/database.yml) in your server.
# They will be linked in the 'deploy:link_shared_paths' step.
set :shared_paths, ['config/mongoid.yml', 'config/application.yml', 'log', 'tmp', 'public/uploads', 'public/personal' ]

task :environment do
  queue! %[source /usr/local/rvm/scripts/rvm]
  queue! %[rvm use 2.0.0]
end