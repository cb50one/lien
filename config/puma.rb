# app_dir = File.expand_path("../..", __FILE__)
# bind "unix://#{app_dir}/tmp/sockets/puma.sock"
pidfile "#{app_dir}/tmp/pids/puma.pid"
# state_path "#{app_dir}/tmp/pids/puma.state"
# stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true

threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count
#port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
plugin :tmp_restart

app_root = File.expand_path("../..", __FILE__)
bind "unix://#{app_root}/tmp/sockets/puma.sock"
#
#stdout_redirect "#{app_root}/log/puma.stdout.log", "#{app_root}/log/puma.stderr.log", true
