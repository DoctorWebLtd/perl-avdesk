#!/usr/bin/perl -w
use ExtUtils::testlib;
use DWAVDesk;

use warnings;
use strict;

DWAVDesk::Utils::debug("new-perl-avdesk-debug.log");

sub avd_die {
  my $what = shift;
  die("$what: " . DWAVDesk::Utils::get_error()->{string});
}

sub ok {
  my ($code, $what) = @_;
  $code or avd_die($what)
}

eval {
  my $server = DWAVDesk::Server->new("http://10.3.0.24", 9080, "admin", "test");

  $server or avd_die("server");

  my $repos = $server->repositories();

  $repos or avd_die("repos");

  print "Repositories:\n";
  foreach my $r (@$repos) {
    print "\trev_date => $r->{\"rev_date\"}\n";
    print "\trev_id => $r->{\"rev_id\"}\n";
    print "\tcode => $r->{\"code\"}\n";
    print "\tstate => $r->{\"state\"}\n";
    print "\tname => $r->{\"name\"}\n";
    print "\n";
  }

  my $tariff = DWAVDesk::Tariff->new($server);

  $tariff->get(DWAVDesk::TARIFF_ID_FREE);

  print($tariff->id()."\n");
  print($tariff->description()."\n");
  print($tariff->name()."\n");
  print($tariff->grace_period()."\n");

  my $grp = DWAVDesk::Group->new($server);
  ok($grp, "Server: new group");
  ok($grp->set_name("PerlTest_group".rand()), "Group: set name.");
  ok($grp->set_description("PerlTest_group_some_description"), "Group: set description.");
  ok($grp->add_email("test1\@mail.com"), "Group: add email.");
  ok($grp->add_email("test2\@mail.com"), "Group: add email.");
  ok($grp->add_email("test3\@mail.com"), "Group: add email.");
  ok($grp->create(), "Group: create.");

  my $parent_group_id = $grp->id();

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

  print("id: $id_admin");
  print("admin: " . $admin->is_global_admin() . "\n");
  print("group count: " . $admin->groups_count() . "\n");
  print("group admin: " . $admin->is_group_admin() . "\n");
  
  # Changing admin
  ok($admin->set_id($id_admin), "Admin: set /update");
  ok($admin->set_name("ch_name".rand()), "Admin: set name /update");
  ok($admin->set_password("ch_password"), "Admin: set password /update");
  ok($admin->set_last_name("ch_last_name"), "Admin: set last name /update");
  ok($admin->set_middle_name( "ch_middle_name"), "Admin: set middle name /update");
  ok($admin->set_readonly(1), "Admin: set readonly /update");
  ok($admin->set_readonly(10), "Admin: set readonly /update");
  ok($admin->set_readonly(0), "Admin: set readonly /update");
  #ok($admin->delete_from_group($parent_group_id), "Admin: delete from group /update");
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

  print("admin: " . $admin->is_global_admin() . "\n");
  print("group count: " . $admin->groups_count() . "\n");
  print("group admin: " . $admin->is_group_admin() . "\n");


  my $id_st;
  my $till;
  my $st = DWAVDesk::Station->new($server);

  $st or avd_die("station");

  $st->get("87133657-e326-4f6d-a0da-126aefd71450");
  print($st->tariff_id() . "\n");

  $st->set_tariff_id(DWAVDesk::TARIFF_ID_J_PREMIUM);
  $st->update();
  print($st->tariff_id() . "\n");
};

if ($@) {
  die "exception: $@";
}

