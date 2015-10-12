# config valid only for current version of Capistrano
lock '3.4.0'

set :repo_url,      'git@github.com:CodeClub/robo-boogie.git'
set :user,          'deploy'
set :scm,           :git
set :format,        :pretty
set :log_level,     :debug # :debug required for rsync --verbose output
set :keep_releases, 5

set :ssh_options, {
  forward_agent: true,
  keys:          %w(~/.ssh/id_rsa.pub),
  user:          'deploy'
}