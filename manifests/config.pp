define git::config (
	$value,
	$key = $name,,
	$user = 'root',
	$scope = 'global',
) {
	include ::git
}

git_config { $title:
	key => $_key,
	value => $value,
	user => $user,
	scope => $scope,
	require => $git_package
}
}