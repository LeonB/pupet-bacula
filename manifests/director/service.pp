class bacula::director::service {

	service { 'bacula-director':
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['bacula::director::package'],
		subscribe  => File['/etc/bacula/bacula-dir.conf']
	}
}
