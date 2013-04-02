# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl dwavd.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 274;
BEGIN { use_ok('DWAVDesk') };

use Time::Local;
use Time::localtime;

#########################

DWAVDesk::Utils::debug();

my $server = DWAVDesk::Server->init("http://10.3.0.24", 9080, "admin", "test");
ok($server, "Server set connect info.");
ok($server->set_user_agent("custom-user-agent"), "Server: set user agent");
ok($server->run_task('scc_unknown_stations'), 'Server: run task');

# Server information
my $info = $server->get_info();
ok($info, "Server: get info");
ok(exists $info->{"uptime"}, "Server info: uptime: ".$info->{"uptime"});
ok(exists $info->{"groups_total"}, "Server info: groups_total: ".$info->{"groups_total"});
ok(exists $info->{"groups_custom"}, "Server info: groups_custom: ".$info->{"groups_custom"});
ok(exists $info->{"groups_system"}, "Server info: groups_system: ".$info->{"groups_system"});
ok(exists $info->{"groups_rate"}, "Server info: groups rate: ".$info->{"groups_rate"});
ok(exists $info->{"stations_total"}, "Server info: stations total: ".$info->{"stations_total"});
ok(exists $info->{"stations_licensed"}, "Server info: stations licensed: ".$info->{"stations_licensed"});
ok(exists $info->{"stations_available"}, "Server info: stations available: ".$info->{"stations_available"});
ok(exists $info->{"version"}, "Server info: version: ".$info->{"version"});
ok(exists $info->{"branch"}, "Server info: branch: ".$info->{"branch"});
ok(exists $info->{"api_version"}, "Server info: api version: ".$info->{"api_version"});
ok(exists $info->{"api_build"}, "Server info: api build: ".$info->{"api_build"});
ok(exists $info->{"uuid"}, "Server info: uuid: ".$info->{"uuid"});
ok(exists $info->{"platform"}, "Server info: platform: ".$info->{"platform"});
ok(exists $info->{"os"}, "Server info: os: ".$info->{"os"});
ok(exists $info->{"host"}, "Server info: host: ".$info->{"host"});

# Key information
$info = $server->get_key_info();
ok($info, "Key: get info.");
ok(exists $info->{"products"}, "Key info: products: ".$info->{"products"});
ok(exists $info->{"clients"}, "Key info: clients: ".$info->{"clients"});
ok(exists $info->{"user"}, "Key info: user: ".$info->{"user"});
ok(exists $info->{"servers"}, "Key info: servers: ".$info->{"servers"});
ok(exists $info->{"dealer"}, "Key info: dealer: ".$info->{"dealer"});
ok(exists $info->{"antispam"}, "Key info: antispam: ".$info->{"antispam"});
ok(exists $info->{"created"}, "Key info: created: ".$info->{"created"});
ok(exists $info->{"expires"}, "Key info: expires: ".$info->{"expires"});
ok(exists $info->{"activated"}, "Key info: activated: ".$info->{"activated"});
ok(exists $info->{"md5"}, "Key info: md5: ".$info->{"md5"});
ok(exists $info->{"uuid"}, "Key info: uuid: ".$info->{"uuid"});
ok(exists $info->{"dealer_name"}, "Key info: dealer name: ".$info->{"dealer_name"});
ok(exists $info->{"user_name"}, "Key info: user name: ".$info->{"user_name"});

# Creating parent group
my $grp = DWAVDesk::Group->new($server);
ok($grp, "Server: new group");
ok($grp->set_name("PerlTest_group".rand()), "Group: set name.");
ok($grp->set_description("PerlTest_group_some_description"), "Group: set description.");
ok($grp->add_email("test1\@mail.com"), "Group: add email.");
ok($grp->add_email("test2\@mail.com"), "Group: add email.");
ok($grp->add_email("test3\@mail.com"), "Group: add email.");
ok($grp->create(), "Group: create.");

my $parent_group_id = $grp->id();
ok($parent_group_id, "Group: get id");

# Creating station
my $id_st;
my $till;
my $st = DWAVDesk::Station->new($server);
SKIP: {
    skip "Station does not init.", 1 unless $st;
    ok($st->set_name("station_name".rand()), "Station: set name");
    ok($st->set_password("station_password"), "Station: set password");
    ok($st->set_description("station description"), "Station: set description");
    ok($st->set_department("station department"), "Station: set department");
    ok($st->set_room("station room"), "Station: set room");
    ok($st->set_tariff_id(DWAVDesk::TARIFF_ID_J_PREMIUM), "Station: set TARIFF_ID_J_PREMIUM");
    ok($st->set_city("station_city"), "Station: set city");
    ok($st->set_country_by_numcode(643), "Station: set country");
    ok($st->set_street("station_street"), "Station: set street");
    ok($st->set_floor("station_floor"), "Station: set floor");
    ok($st->set_parent_id($parent_group_id), "Station: set parent");
    ok($st->set_province("station_province"), "Station: set province");
    ok($st->add_email("test1\@mail.com"), "Station: add email");
    ok($st->add_email("test2\@mail.com"), "Station: add email");
    ok($st->add_email("test3\@mail.com"), "Station: add email");
    ok($st->add_email(""), "Station: add empty email");
    ok($st->set_latitude(123), "Station: set longitude");
    ok($st->set_longitude(-654), "Station: set longitude");
    ok($st->set_longitude(0), "Station: set longitude");
    $till = time() + 24 * 60 * 60;
    ok($st->set_expires_time($till), "Station: set expires");
    ok($st->set_organization("station_organization"), "Station: set organization");
    ok($st->create(), "Station: create.");
 
    $id_st = $st->id();
    ok($id_st, "Station: get id");

    # Station info
    ok($st->name(), "Station: get name");
    ok($st->floor() eq "station_floor", "Station: get floor");
    ok($st->city() eq "station_city", "Station: get city");
    ok($st->country() == 643, "Station: get country numcode");
    ok($st->department() eq "station department", "Station: get department");
    ok($st->description() eq "station description", "Station: get description");
    ok($st->created_time(), "Station: get created");
    ok($st->expires_time() eq $till, "Station: get expires");
    ok($st->grace_period(), "Station: get grace_period");
    ok($st->tariff_id() eq DWAVDesk::TARIFF_ID_J_PREMIUM, "Station: get tariff");
    ok($st->lastseen_time() == 0, "Station: get lastseenat");
    ok(!$st->lastseen_addr(), "Station: get lastseenfrom");
    ok($st->latitude() == 123, "Station: get latitude");
    ok($st->longitude() == 0, "Station: get longitude");
    ok($st->modified_time(), "Station: get modified");
    ok($st->organization() eq "station_organization", "Station: get organization");
    ok($st->os_str(), "Station: get os");
    ok($st->parent_id() eq $parent_group_id, "Station: get parent");
    ok($st->password() eq "station_password", "Station: get password");
    ok($st->province() eq "station_province", "Station: get province");
    ok($st->room() eq "station room", "Station: get room");
    ok($st->state()->{"code"} eq 0, "Station: get state");
    ok($st->street() eq "station_street", "Station: get street");
    ok($st->url(), "station url");
    ok($st->groups_count() == 1, "Station: get groups count");
    ok($st->grace_period() == 30, "Station: get grace period");
    ok($st->rights(), "Station: get rights");
    ok($st->modules(), "Station: get modules.");
    ok($st->bases(), "Station: get bases.");
    ok($st->components(), "Station: get components.");
    ok($st->components_installed(), "Station: get components installed.");
    ok($st->components_running(), "Station: get components running.");
}

# Creating admin
my $admin = DWAVDesk::Admin->new($server);
ok($admin, "Admin: new.");
ok($admin->set_name("name"), "Admin: set name.");
ok($admin->set_password("password"), "Admin: set password.");
ok($admin->set_login("perltestadmin".rand()), "Admin: set login.");
ok($admin->set_last_name("last_name"), "Admin: set last name.");
ok($admin->set_middle_name("middle_name"), "Admin: set middle name.");
ok($admin->set_readonly(1), "Admin: set readonly.");
ok($admin->add_to_group($parent_group_id), "Admin: add to group.");
ok($admin->set_description("description"), "Admin: set description.");
ok($admin->create(), "Admin: create.");
my $id_admin = $admin->id();
ok($id_admin, "Admin: get id.");

# Admins information
ok($admin->login(), "Admin: get login.");
ok($admin->id(), "Admin: get ID.");
ok($admin->password() eq "password", "Admin: get password.");
ok($admin->name() eq "name", "Admin: get name.");
ok($admin->last_name() eq "last_name", "Admin: get last name.");
ok($admin->middle_name() eq "middle_name", "Admin: get middle name.");
ok($admin->description() eq "description", "Admin: get description.");
ok($admin->created_time(), "Admin: get created.");
ok($admin->modified_time(), "Admin: get modified.");
my $admin_grp = $admin->groups();
ok($admin_grp, "Admin: get groups.");
ok($admin->groups_count() == 1, "Admin: get groups count.");
ok($admin_grp->[0] eq $parent_group_id, "Admin: get group.");

# Creating child group
my $grp2 = DWAVDesk::Group->new($server);
ok($grp2, "Group: new.");
ok($grp2->set_name("PerlTest_group_some_name"), "Group: set name.");
ok($grp2->set_parent_id($parent_group_id), "Group: set parent.");
ok($grp2->create(), "Group: create.");

my $child_group_id = $grp2->id();
ok($child_group_id, "Group: get id");

# Parent group info
$grp = DWAVDesk::Group->new($server);
ok($grp, "Server: new group");
#ok(!$grp->get("wrong_id"), "Group: info with wrong ID.");
ok($grp->get($parent_group_id), "Group: info.");
ok($grp->id() eq $parent_group_id, "Group: get ID ($grp->id() == $parent_group_id).");
ok($grp->name(), "Group: get name.");
ok($grp->description() eq "PerlTest_group_some_description", "Group: get description.");

# Group rights
ok($grp->rights(), "Group: get rights.");

# Group type
ok($grp->is_custom(), "Group: is custom.");
ok(!$grp->is_transport(), "Group: is transport.");
ok(!$grp->is_tariff(), "Group: is tariff.");
ok(!$grp->is_status(), "Group: is status.");
ok(!$grp->is_virtual(), "Group: is virtual.");
ok(!$grp->is_system(), "Group: is system.");
ok(!$grp->is_platform(), "Group: is platform.");
ok($grp->type() eq 0, "Group: get type.");

# Group stations
my $stations = $grp->stations();
SKIP: {
    skip "Group does not have stations.", 2 unless $stations;
    ok($stations->[0] eq $id_st, "Group: get stations.");
    ok($grp->stations_count() eq 1, "Group: get stations count.");
}

# Group admins
my $admins = $grp->admins();
ok($admins, "Group: get admins");
ok($admins->[0] eq $admin->login(), "Group: get admin login.");

# Child groups
my $child_groups = $grp->child_groups();
ok($child_groups, "Group: get child groups.");
ok($grp->child_groups_count() == 1, "Group: get child groups count.");
ok($child_groups->[0] eq $child_group_id, "Group: get child group ID.");

# Group key
ok($grp->key(), "Group: get key");

# Changing group
ok($grp->set_description("test set_description"), "Group: set description");
ok($grp->delete_email("test3\@mail.com"), "Group: delete email ");
ok($grp->update(), "Group: update.");
ok($grp->description() eq "test set_description", "Group: get update description.");

# Changing station
$st = DWAVDesk::Station->new($server);
SKIP: {
    skip "Station does not init.", 1 unless $st && $id_st;
    $st->set_id($id_st);
    $st->set_name("ch_station_name");
    $st->set_password("ch_station_password");
    $st->set_description("ch_station_description");
    $st->set_department("ch_station_department");
    $st->set_room("ch_station_room");
    $st->set_city("ch_station_city");
    $st->delete_email("test1\@mail.com");
    $st->delete_email("test2\@mail.com");
    $st->delete_email("test3\@mail.com");
    $st->set_country_by_numcode(804);
    $st->set_street("ch_station_street");
    $till = time() + 24 * 60 * 60;
    $st->set_expires_time($till);
    my $year  = ${localtime()}[5] + 1900;
    my $begin = timelocal(0,0,0,1,0,$year + 1);
    my $end   = timelocal(0,0,0,1,0,$year + 2);
    $st->set_block($begin, $end);
    $st->set_floor("ch_station_floor");
    $st->set_province("ch_station_province");
    $st->set_organization("ch_station_organization");
    $st->set_latitude(1234);
    $st->set_longitude(6544);
    $st->set_organization("ch_station_organization");
    ok($st->update(), "Station: update.");

    $st = DWAVDesk::Station->new($server);
    $st->get($id_st);

    # Station info
    ok($st->name() eq "ch_station_name", "Station: get name");
    ok($st->floor() eq "ch_station_floor", "Station: get floor");
    ok($st->city() eq "ch_station_city", "Station: get city");
    ok($st->country() eq 804, "Station: get numcode");
    ok($st->department() eq "ch_station_department", "Station: get department");
    ok($st->description() eq "ch_station_description", "Station: get description");
    ok($st->config_url(), "Station: get config link");
    ok($st->created_time(), "Station: get created");
    ok($st->expires_time() == $till, "Station: get expires");
    ok($st->grace_period(), "Station: get grace period");
    ok($st->tariff_id() eq DWAVDesk::TARIFF_ID_J_PREMIUM, "Station: get tariff");
    ok($st->lastseen_time() eq 0, "Station: get lastseenat");
    ok(!$st->lastseen_addr(), "Station: get lastseenfrom");
    ok($st->latitude() eq 1234, "Station: get latitude");
    ok($st->longitude() eq 6544, "Station: get longitude");
    ok($st->block_time_begin() == $begin, "Station: get block begin");
    ok($st->block_time_end() == $end, "Station: get block end");
    ok($st->modified_time(), "Station: get modified");
    ok($st->organization() eq "ch_station_organization", "Station: get organization");
    ok($st->os_str(), "Station: get os");
    ok($st->parent_id() eq $parent_group_id, "Station: get parent");
    ok($st->password() eq "ch_station_password", "Station: get password");
    ok($st->province() eq "ch_station_province", "Station: get province");
    ok($st->room() eq "ch_station_room", "Station: get room");
    ok($st->street() eq "ch_station_street", "Station: get street");
    ok($st->emails_count() == 0, "Station: get emails count");
    ok($st->packages(), "Station: get packages list");
}

# Group parent
$grp2 = DWAVDesk::Group->new($server);
ok($grp2, "Group: new");
ok($grp2->get($child_group_id), "Group: get info.");
ok($grp2->parent_id() eq $parent_group_id, "Group: get parent ID.");

# Changing admin
ok($admin->set_id($id_admin), "Admin: set /update");
ok($admin->set_name("ch_name".rand()), "Admin: set name /update");
ok($admin->set_password("ch_password"), "Admin: set password /update");
ok($admin->set_last_name("ch_last_name"), "Admin: set last name /update");
ok($admin->set_middle_name( "ch_middle_name"), "Admin: set middle name /update");
ok($admin->set_readonly(1), "Admin: set readonly /update");
ok($admin->set_readonly(10), "Admin: set readonly /update");
ok($admin->set_readonly(0), "Admin: set readonly /update");
ok($admin->delete_from_group($parent_group_id), "Admin: delete from group /update");
ok($admin->set_description("ch_description"), "Admin: set description /update");
ok($admin->update(), "Admin: update.");

# Admins info
ok($admin->id() eq $id_admin, "Admin: get ID");
ok($admin->password() eq "ch_password", "Admin: get password.");
ok($admin->name(), "Admin: get name.");
ok($admin->last_name() eq "ch_last_name", "Admin: get last name");
ok($admin->middle_name() eq "ch_middle_name", "Admin: get middle name.");
ok($admin->description() eq "ch_description", "Admin: get description.");
ok($admin->created_time(), "Admin: get created time.");
ok($admin->modified_time() > $admin->created_time(), "Admin: get modified time.");
ok($admin->is_global_admin(), "Admin: get type global admin.");
ok(!$admin->is_group_admin(), "Admin: get type group admin.");
ok($admin->groups_count() == 0, "Admin: get groups count.");

# Admin list
$admins = $server->admins();
ok($admins, "Admin: get list.");

my $test = 1;
foreach(@$admins){
    if (!$_->{"login"} || !$_->{"id"}) {
        $test = 0;
    }
}
ok($test, "Admin: list item.");

# Groups list
my $groups = $server->groups();
ok($groups, "Group: get list.");

$test = 1;
foreach(@$groups){
    if (!$_->{"id"}) {
        $test = 0;
    }
}
ok($test, "Group: list item.");

# Group statistics
my $stat = $grp->statistics(0, 0, 10);
ok($stat, "Group statistics: get 0 0 10");
ok($stat->{"stations_total"} > 0, "Group statistics: get stations total");

my $state = $stat->{"state"};
ok($state, "Group statistics: get state");

my $total = $state->{"infected"} + $state->{"deinstalled"} + $state->{"blocked"} + $state->{"expired"} + $state->{"offline"} + $state->{"activated"} + $state->{"unactivated"};
ok($state->{"total"} > 0, "Group statistics: get total state");
ok($total > 0, "Group statistics: get total > 0");

my $scans = $stat->{"scans"};
ok($scans, "Group statistics: get scans");

my $infections = $stat->{"infections"};
ok($infections, "Group statistics: get infections");

$total = $infections->{"deleted"} + $infections->{"cured"} + $infections->{"incurable"} + $infections->{"moved"} + $infections->{"locked"} + $infections->{"renamed"} + $infections->{"errors"} + $infections->{"ignored"};
ok($infections->{"total"} == $total, "Group statistics: get infections total");

my $viruses = $stat->{"viruses"};
ok($viruses, "Group statistics: get viruses");

# Station statistics
$stat = $st->statistics(0, 0, 10);
ok($stat, "Station statistics: get 0 0 10");

$scans = $stat->{"scans"};
ok($scans, "Station statistics: get scans");

$infections = $stat->{"infections"};
ok($infections, "Station statistics: get infections");

$total = $infections->{"deleted"} + $infections->{"cured"} + $infections->{"incurable"} + $infections->{"moved"} + $infections->{"locked"} + $infections->{"renamed"} + $infections->{"errors"} + $infections->{"ignored"};
ok($infections->{"total"} == $total, "Station statistics: get infections total");

$viruses = $stat->{"viruses"};
ok($viruses, "Station statistics: get viruses");

# Server statistics
$stat = $server->statistics(0, 0, 10);
ok($stat, "Server statistics: get 0 0 10");
ok($stat->{"groups_total"} > 0, "Server statistics: groups total");
ok($stat->{"groups_custom"} > 0, "Server statistics: groups custom");
ok($stat->{"groups_system"} > 0, "Server statistics: groups system");
ok($stat->{"groups_rate"} > 0, "Server statistics: groups rate");
ok($stat->{"stations_total"} > 0, "Server statistics: stations total");

$state = $stat->{"state"};
ok($state, "Server statistics: state");

$total = $state->{"infected"} + $state->{"deinstalled"} + $state->{"blocked"} + $state->{"expired"} + $state->{"offline"} + $state->{"activated"} + $state->{"unactivated"};
ok($state->{"total"} > 0, "Server statistics: state total");
ok($total > 0, "Server statistics: state total > 0");

$scans = $stat->{"scans"};
ok($scans, "Server statistics: scans");

$infections = $stat->{"infections"};
ok($infections, "Server statistics: infections");

$total = $infections->{"deleted"} + $infections->{"cured"} + $infections->{"incurable"} + $infections->{"moved"} + $infections->{"locked"} + $infections->{"renamed"} + $infections->{"errors"} + $infections->{"ignored"};
ok($infections->{"total"} >= $total, "Server statistics: infections total");

$traffic = $stat->{"traffic"};
ok($traffic, "Server statistics: traffic");

$total = $traffic->{"in"} + $traffic->{"out"};
ok($traffic->{"total"} == $total, "Server statistics: traffic total");

$viruses = $stat->{"viruses"};
ok($viruses, "Server statistics: viruses");

=for won't work because of the XML API bug

$history = $st->history(0,0,DWAVDesk::STATION_ALL);
ok($history, "Station: get history: STATION_ALL");

$history = $st->history(0,0,DWAVDesk::STATION_EXPIRES_SET);
ok($history, "Station: get history: STATION_EXPIRES_SET");

$history = $st->history(0,0,DWAVDesk::STATION_BLOCK_SET);
ok($history, "Station: get history: STATION_BLOCK_SET");

$history = $st->history(0,0,DWAVDesk::STATION_TARIFF_CHANGED);
ok($history, "Station: get history: STATION_TARIFF_CHANGED");

$history = $st->history(0,0,DWAVDesk::STATION_CREATED);
ok($history, "Station: get history: STATION_CREATED");

$history = $st->history(0,0,DWAVDesk::STATION_DELETED);
ok($history, "Station: get history: STATION_DELETED");

$history = $st->history(0,0,DWAVDesk::STATION_RESTORED);
ok($history, "Station: get history: STATION_RESTORED");

=cut

# Deleting groups
ok($grp2->delete(), "Group: delete group with exist ID.");
ok($grp->delete(), "Group: delete group with exist ID.");

# Deleting stations
ok($st->delete(), "Station: delete station with exist ID.");

# Deleting admin
ok($admin->delete(), "Admin: delete admin with exist ID.");

# Tariff groups
$tariff = DWAVDesk::Tariff->new($server);
ok($tariff, "Tariff: new");
ok($tariff->get(DWAVDesk::TARIFF_ID_J_CLASSIC), "Tariff: info");
ok($tariff->id(), "Tariff: get id");
ok($tariff->description(), "Tariff: get description");
ok($tariff->name(), "Tariff: get name");
ok($tariff->grace_period() == 30, "Tariff: get grace period");

# Creating tariff group
ok($tariff->set_id(""), "Tariff: set ID");
ok($tariff->set_name("MyTariffGroup"), "Tariff: set name");
ok($tariff->set_parent_id(DWAVDesk::TARIFF_ID_J_CLASSIC), "Tariff: set parent");
ok($tariff->set_component(DWAVDesk::COMPONENT_OUTLOOK, DWAVDesk::COMPONENT_STATE_OPTIONAL), "Tariff: set COMPONENT_OUTLOOK");
ok(!$tariff->set_component(14, -2), "Tariff: set wrong component");
ok($tariff->create(), "Tariff: create.");
ok($tariff->id(), "Tariff: get id");
ok($tariff->description(), "Tariff: get description");
ok($tariff->name() eq "MyTariffGroup", "Tariff: get name");
ok($tariff->grace_period() == 30, "Tariff: get grace period");

my $components = $tariff->components();
foreach(@$components){
  if($_->{"value"} == DWAVDesk::COMPONENT_STATE_OPTIONAL) {
    ok(DWAVDesk::Utils::app_name($_->{"code"}), "Tariff: get COMPONENT_STATE_OPTIONAL ".DWAVDesk::Utils::app_name($_->{"code"}))
  }
}

# Changing tariff
ok(!$tariff->set_grace_period(999), "Tariff: set grace period 999");
ok(!$tariff->set_grace_period(-15), "Tariff: set grace period -15");
ok($tariff->set_grace_period(15), "Tariff: set grace period");
ok($tariff->update(), "Tariff: update");
ok($tariff->grace_period() == 15, "Tariff: get grace period");

# Deleting tariff
ok($tariff->delete(DWAVDesk::TARIFF_ID_J_CLASSIC), "Tariff: delete tariff with exist ID.");
