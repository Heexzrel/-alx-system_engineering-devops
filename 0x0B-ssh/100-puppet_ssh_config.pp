# making changes to config file using Puppet

include stdlib

file_line { 'Refuse to authenticate using a password':
  ensure => present,
  path   => 'alx-system_engineering-devops/0x0B-ssh/2-ssh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'Use private key':
  ensure => present,
  path   => 'alx-system_engineering-devops/0x0B-ssh/2-ssh_config',
  line   => 'IdentityFile alx-system_engineering-devops/0x0B-ssh/2-ssh_config'
}
