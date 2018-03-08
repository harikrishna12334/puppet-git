class git::gitosis {
	include ::git
	package {'gitosis':
		ensure => present
	}
}