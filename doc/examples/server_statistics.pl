#!/opt/local/lib/perl5
use DWAVDesk;

# Connecting to server using address, port, login and password.
$handle = DWAVDesk::Server->init("http://192.168.1.1", 9080, "admin", "root");
$handle or die('Error: ' . DWAVDesk::Utils::get_error()->{string});

$stat = $handle->statistics(0, 0, 10);

while (($k,$v) = each %$stat) {
  if (($k eq "scans")||($k eq "traffic")||($k eq "state")||($k eq "infections")) {
    print "$k => \n";
    while ( ($kscans,$vscans) = each %$v ) {
      print "\t$kscans => $vscans\n";
    }
  } elsif ($k eq "viruses"){
    print "$k => \n";
    foreach $vir(@$v) {
      while ( ($kviruses,$vviruses) = each %$vir ) {
        if ($kviruses eq "infected_objects") {
          #	print "\t$kviruses => \n";
          #	foreach $obj(@$vviruses) {
          #		while ( ($kobj,$vobj) = each %$obj ) {
          #			print "\t\t$kobj => $vobj\n";
          #		}
          #		print "\t\t************\n";
          #	}
        } else {
          print "\t$kviruses => $vviruses\n";
        }
      }
      print "\t-----------------\n";
    }
  }
  else {
    print "$k => $v\n";
  }
}
