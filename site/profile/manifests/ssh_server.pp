class profile::ssh_server {
    package {'openssh-server':
          ensure => present,
    }
    service { 'sshd':
        ensure => 'running',
        enable => 'true',
     }
     ssh_authorized_key { 'root@master.puppet.vm':
        ensure => present,
        user => 'root',
        type => 'ssh-rsa',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6z8NvFb7CcJ4WzBPS9BLEmhAnLIvLRmfQH0TzmHVoK73nwsegTuGw/BucGs0O13PwfXFoqu+wkEZo49/PhtfgN8HPDJWBPXxUyuKeWNCS8816+9MhtuQWklQ/PM5d2EHMK4tucpGOtvWvhHLEsAamx9QRuGoK4wmIGprV0UfMix7aAY/l0O6Xj+ss1iwO8H3NaKy8Htq2YInhzUAP9Sgx092xn0zvPpf4PEEdCROADThKXmEUr8l6PPR36DWcbxHNcH/OTOCl8mqLSm6cw2QKPCNp/0QmbcwEYxJiY3hbiOrYMg/+iM2gCajBYoZQJLh7rtde6HOo6/9uWD/WDBYn',
      }
}
  
