#!/opt/local/lib/perl5
use DWAVDesk;

$handle = DWAVDesk::Server->init("http://192.168.1.10", 9080, "admin", "root");
$handle or die('Error: ' . DWAVDesk::Utils::get_error()->{string});

$admins = $handle->admins();

foreach(@$admins){
  print $_."\n";  
}


