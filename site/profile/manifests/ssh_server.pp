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
		user   => 'root',
		type   => 'ssh-rsa',
		key    => ' AAAAB3NzaC1yc2EAAAADAQABAAABAQChQYVvShuMu5aRGCnsy7tykRB3Km3qYG0opjRTq9j6IqDFFWMNHHi8Hnuvi4zSF4Dyt4yadtnfBGpbsu31VoNRDYg5hhNccGe9o1YFZU59v7K/ceFfYDMFz5lBE60dVBgHuuHa3x0qyb1QI9voAFIgJkMHZ6pVOjWpigHJdAv8DCzdLZKMtPtiKZGG6+aOi/OYhJJSwSXz5FAAIEbomi4HyT+8L+o1OfOQqeFpl9C1SQ9jgoRugcdtzzUSe8gEu+sVLO/h6b+HjJS0N+gDMK+xruaM4pp4teJzscGmBQGrZjZv3dMUSN4UAScEVQOGpoUxVv8V4+eUDZm3Z7eDEv9L',
	}  
}
