#!/opt/local/lib/perl5
use DWAVDesk;

$handle = DWAVDesk::Server->init("http://192.168.1.1", 9080, "admin", "root");
$handle or die('Error: ' . DWAVDesk::Utils::get_error()->{string});

# Tariff group initialization
$tariff = DWAVDesk::Tariff->new($handle);

if (!$tariff->get(DWAVDesk::TARIFF_ID_J_CLASSIC)) {
  $error = DWAVDesk::Utils::get_error($handle);
  print "Error: ".$error->{"string"}."\n";
  print "Server error: ".$error->{"srvstring"}."\n";
}

print "ID: ".$tariff->id()."\n";
print "Name: ".$tariff->name()."\n";
print "Grace period: ".$tariff->grace_period()."\n";

# Creating tariff group
$tariff->set_id("");
$tariff->set_name("MyTariffGroup");
$tariff->set_parent_id(DWAVDesk::TARIFF_ID_J_CLASSIC);
$tariff->set_component(DWAVDesk::COMPONENT_OUTLOOK, DWAVDesk::COMPONENT_OPTIONAL);

if (!$tariff->create()) {
  $error = DWAVDesk::Utils::get_error($handle);
  print "Error: ".$error->{"string"}."\n";
  print "Server error: ".$error->{"srvstring"}."\n";
} else {
  print "\nID: ".$tariff->id()."\n";
  print "Name: ".$tariff->name()."\n";
  print "Parent ID: ".$tariff->parent_id()."\n";

  $components = $tariff->components();

  foreach(@$components){
    if($_->{"value"} == DWAVDesk::COMPONENT_OPTIONAL) {
      print DWAVDesk::Utils::app_name($_->{"code"}) . "\n";
    }
  }

  # Changing tariff group info
  $tariff->set_grace_period(15);

  if (!$tariff->update()) {
    $error = DWAVDesk::Utils::get_error($handle);
    print "Error: ".$error->{"string"}."\n";
    print "Server error: ".$error->{"srvstring"}."\n";
  }

  print "Grace period: ".$tariff->grace_period()."\n";

  # Deleting tariff group
  $tariff->delete(DWAVDesk::TARIFF_ID_J_CLASSIC);
}
