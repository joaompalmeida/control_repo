class profile::ssh_server{
   package {'openssh-server':
      ensure => present,
   }
   service { 'sshd':
      ensure => 'running',
      enable => 'true',
   }
   ssh_authorized_key { 'root@master.puppet.vm':
      ensure => present,
      user   => 'root',
      type   => 'ssh-rsa',
      key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCu+GN3oFIessVf3RYipdu1154qsfAwPXZ660nI9Dtl+dCSIlKcLwDMBixbl7jHj+sjnoj6hOfTbTd9oLAvn6xrwbeaoDEXYYSsaCO0Z+0nT+ISh+wGpbBxrzNgVXwrezFk1FDspKYB1vPYpEtIFpKKkm0+EVPzVqp16GOijT0SHuzH/xBOWzUKBR6sqwRV5qlasVEKmvnhwjAOjM0vnEVviCEg9WBd3nBCzpYFPUTlRnga5oLwdSX2jizL3LiVzE6p+pwUcA2TUcWLXxGtmczYsITU9J7SXuixwUZ6bHd6ifclOs90AUepN0FLphuzM5SQEjap4KlvRcYdar553LZ3',
   }
}
