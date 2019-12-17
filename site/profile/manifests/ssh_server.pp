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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDGghHo2Addfy3ZXE0zJD6kwV7P7lRxbzYJg3yUA6MORlG6qq/2FW4Jwim2bCGuc7aRQ8Aw3c0GdKY4j8WI24sS7UkZBzVSgqugIs245Rfv2mZUqEK38HgD7xjzN4xc3CvP2L/mnm31fntEcUJGbLvgWWiSwns7Q9oa+e+j6qej62Gpfj6J5uX/MhowHkliZjHyFQ3lvAiiXwI5497RLyaj64dthTVsJVWCAAaOXbBeCKbo0EjxeBy0p5eFvuuI9FpZTgH9fTL7FfIbKvPIIgXG48Y8bwM+48gWZPrZWSugbh3Muuu8ySxjh9EIUmUV8+I9Q3rx6KfNtGzkHkGZPH7n',
	}  
}
