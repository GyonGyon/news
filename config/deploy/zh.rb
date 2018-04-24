set :domain, 'yafeilee.me'
set :deploy_to, '/root/fe/cryptape-news'
set :repository, 'https://github.com/GyonGyon/news.git'
set :branch, 'master'
set :user, 'ruby'
set :unicorn_config, -> { "#{deploy_to}/#{current_path}/config/unicorn/zh.rb" }