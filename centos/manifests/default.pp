file { '/etc/motd':
    content => "Welcome to your Vagrant-built virtual machine $role!
                Managed by Puppet.\n"
  }
 

