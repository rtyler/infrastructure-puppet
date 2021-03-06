#/etc/puppet/modules/subversionclient/manifests/init.pp

class subversionclient (
  $packages             = [],
  $svn_conf_config      = '',
  $svn_conf_servers     = '',

) {

  package { $packages:
    ensure   =>  installed,
  }

  file { 
    "$svn_conf_config":
      source  => 'puppet:///modules/subversionclient/config',
      owner   => 'root',
      group   => 'root',
      mode    => '644';
    "$svn_conf_servers":
      source  => 'puppet:///modules/subversionclient/servers',
      owner   => 'root',
      group   => 'root',
      mode    => '644';
  }
}
