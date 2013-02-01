#!/opt/local/lib/perl5
use DWAVDesk;

# Connecting to server using address, port, login and password.
$handle = DWAVDesk::Server->init("http://192.168.1.10", 9080, "admin", "root");
$handle or die('Error: ' . DWAVDesk::Utils::get_error()->{string});

# Group initialization
$group = DWAVDesk::Group->new($handle);
$group->set_name("PerlTestGroup");
$group->set_parent_id("test_grp");

# Group creation
if (!$group->create()) {
  $error = DWAVDesk::Utils::get_error($handle);
  print "Error: ".$error->{"string"}."\n";
  print "Server error: ".$error->{"srvstring"}."\n";
} else {
  print "ID: ".$group->id()."\n";
  print "Name: ".$group->name()."\n";
  print "Parent ID: ".$group->parent_id()."\n";

  $admins = $group->admins();

  foreach(@$admins){
    print $_."\n";  
  }

  # Changing admin info
  $group->set_description("Test group");

  if (!$group->update()) {
    $error = DWAVDesk::Utils::get_error($handle);
    print "Error: ".$error->{"string"}."\n";
    print "Server error: ".$error->{"srvstring"}."\n";
  }

  print "Description: ".$group->description()."\n";

  # Deleting admin
  $group->delete();
}
