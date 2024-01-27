# fix nginx to accept and serve more requests

exec { 'fix--for--nginx':
path     => ['/usr/bin', '/bin'],
command  => "sudo sed -i 's/15/4096/g' /etc/default/nginx; sudo service nginx restart",
provider => 'shell',
}
