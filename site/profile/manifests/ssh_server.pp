class profile::ssh_server {
    package {'openssh-server':
      ensure => present,
      }
      service { 'sshd':
      ensure => 'running',
      enable => 'true',
      }
      ssh_authorized_key { 'root@master.puppet.vm':
        ensure => 'present',
        user => 'root',
        type => 'ssh-rsa',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRKZ+eE8nPsHlnt9hcnXKc4JmHgUL5FJwwNzmaZxWuC2Jy247JZJpD/7oJDrOoy87cvKhwIwR0v1Eff0rWTOG1qxKFtuGvdP3811VyqaUygugLQib3aQhk1mA4K5oDBLCFhq97Jitj+NMTJNae0ThPzOF4flL6z36wVNjjTjRNDGMp315uoW6Y9pfdtIGW8Jo1j0kwaTups9mIxqtJkSKxJ8OZKoeDkCARdPHFhofAL7XucXmekfafQec3W4cjNeFG2GZqQHhw+ybiqIHKoeI9N5Z+B7EsdurDcIt5PEGWsoxbpFea4wYTOfAUZ1aTlL9zw3mYoOj0NPLX5WJ4MueT',
        }
}
