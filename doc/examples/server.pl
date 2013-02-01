#!/opt/local/lib/perl5
use DWAVDesk;

# Connecting to server using address, port, login and password.
$handle = DWAVDesk::Server->init("http://192.168.1.1", 9080, "admin", "root");
$handle or die('Error: ' . DWAVDesk::Utils::get_error()->{string});

# Servers info
$info = $handle->get_info();

print "Server info:\n";
while (($key,$val) = each %$info) {
  print "\t$key => $val\n";
}

# Key info
$key_info = $server->get_key_info();

print "Key info:\n";
while (($key,$val) = each %$key_info) {
  print "\t$key => $val\n";
}

# Server repository state
$repos = $server->repositories();

print "Repositories:\n";
foreach $r(@$repos) {
  print "\trev_date => $r->{\"rev_date\"}\n";
  print "\trev_id   => $r->{\"rev_id\"}\n";
  print "\tcode     => $r->{\"code\"}\n";
  print "\tstate    => $r->{\"state\"}\n";
  print "\tname     => $r->{\"name\"}\n";
  print "\n";
}

# Scan statistics
$stat = $server->statistics(0, 0, 10);

print "Scans statistics:\n";
$scan = $stat->{"scans"};
while (($key,$val) = each %$scan) {
  print "\t$key => $val\n";
}
