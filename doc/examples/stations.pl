#!/opt/local/lib/perl5
use DWAVDesk;
use Time::Local;
use Time::localtime;

$handle = DWAVDesk::Server->init("http://192.168.1.1", 9080, "admin", "root");
$handle or die('Error: ' . DWAVDesk::Utils::get_error()->{string});

my $from = timelocal(0,0,0,1,0,2011);
my $till = timelocal(0,0,0,1,0,2012);

$station = DWAVDesk::Station->new($handle);
$station->get("test_av");
$station->history(0,0,DWAVDesk::STATION_TARIFF_CHANGED);

# Station initialization
$station = DWAVDesk::Station->new($handle);
$station->set_name("PerlTestStation");
$station->set_country_by_numcode(643);
$station->set_tariff_id(DWAVDesk::TARIFF_ID_STANDART);
$station->set_block($from, $till);
$station->add_to_group("test_grp");

# Station creation
if (!$station->create()) {
  $error = DWAVDesk::Utils::get_error($handle);
  print "Error: ".$error->{"string"}."\n";
  print "Server error: ".$error->{"srvstring"}."\n";
} else {
  print "ID: ".$station->id()."\n";
  print "Name: ".$station->name()."\n";
  print "URL: ".$station->url()."\n";
  print "Grace_period: ".$station->grace_period()."\n";

  $state = $station->state();

  print "State code: ".$state->{"code"}."\n";
  print "State: ".$state->{"str"}."\n";
  print "Block begins: ".ctime($station->block_time_begin())."\n";
  print "Block ends: ".ctime($station->block_time_end())."\n";

  # Changing station info
  $station->set_description("Test station");

  if (!$station->update()) {
    $error = DWAVDesk::Utils::get_error($handle);
    print "Error: ".$error->{"string"}."\n";
    print "Server error: ".$error->{"srvstring"}."\n";
  }

  print "Description: ".$station->description()."\n";

  # Deleting station
  $station->delete();
}

