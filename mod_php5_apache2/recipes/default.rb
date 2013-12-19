node[:mod_php5_apache2][:packages].each do |pkg|
  package pkg do
    action :install
  end
end
