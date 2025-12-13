# GitLab Configuration
external_url 'http://10.69.1.50:8080'
nginx['listen_port'] = 80
nginx['listen_https'] = false

# SSH settings
gitlab_rails['gitlab_shell_ssh_port'] = 2222

# Performance optimizations
postgresql['shared_buffers'] = "256MB"
sidekiq['max_concurrency'] = 10
sidekiq['concurrency'] = 5
puma['worker_timeout'] = 120
puma['worker_processes'] = 2

# Disable built-in monitoring
prometheus_monitoring['enable'] = false

# Timezone
gitlab_rails['time_zone'] = 'Europe/Oslo'