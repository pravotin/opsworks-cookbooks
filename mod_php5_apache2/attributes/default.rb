packages = []

case node[:platform_family]
when 'debian'
  packages = [
    'php55-xsl',
    'php55-curl',
    'php55-xmlrpc',
    'php55-sqlite',
    'php55-dev',
    'php55-gd',
    'php55-cli',
    'php55-sasl',
    'php55-mysqlnd',
    'php55-mcrypt',
    'php55-memcache',
    'php-pear',
    'php-xml-parser',
    'php-mail-mime',
    'php-db',
    'php-mdb2',
    'php-html-common'
  ]
when 'rhel'
  packages = [
    'php55',
    'php55-xmlrpc',
    'php55-devel',
    'php55-gd',
    'php55-mysqlnd',
    'php55-mcrypt',
    'php55-pecl-memcache',
    'php-pear',
    'php-pear-Auth-SASL',
    'php-pear-XML-Parser',
    'php-pear-Mail-Mime',
    'php-pear-DB',
    'php-pear-HTML-Common'
  ]
end

default[:mod_php5_apache2][:packages] = packages
