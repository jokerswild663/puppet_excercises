#This is puppet code to install apache2, and php5

package{'apache2':
  ensure  => installed
}

notify{'apache':
  message => 'apache2 successfully installed'
}

package{'php5-common':
  ensure  => installed
}

package{'php5-cli':
  ensure  => installed
}

package{'libapache2-mod-php5':
  ensure  => installed
}

notify{'php':
  message => 'php5 successfully installed'
}

notify{'lib':
  message => 'libapache2-mod-php5 successfully installed'
}

Package['apache2'] -> Notify['apache'] -> Package['php5-common'] -> Notify['php'] -> Package['php5-cli'] -> Package['libapache2-mod-php5'] -> Notify['lib']
