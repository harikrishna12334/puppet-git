class git (
$package_name = 'git',
$package_ensure = 'installed',
$package_manage = true,
$configs = {},
$configs_defaults = {}
){
	if ( $package_manage ) {
		package {$package_name:
			ensure => $package_ensure,
		}
	}
	create_resources(git::config, git_config_hash($configs), $config_defaults)
}
