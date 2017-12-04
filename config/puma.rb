app_path = "/opt/peatio"


environment "production"

bind  "unix:///{app_path}/shared/tmp/sockets/puma.sock"
pidfile "/{app_path}/shared/tmp/pids/puma.pid"
state_path "/{app_path}/shared/tmp/sockets/puma.state"
directory "/{app_path}/current"

workers 2
threads 1,20

daemonize true

activate_control_app 'unix:///{app_path}/shared/tmp/sockets/pumactl.sock'

prune_bundler
