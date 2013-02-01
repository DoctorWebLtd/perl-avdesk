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

eval {
  my $server = DWAVDesk::Server->new("http://10.3.0.24", 9080, "admin", "test");

  $server or avd_die("server");

  my $repos = $server->repositories();

  $repos or die avd_die("repos");

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
};

if ($@) {
  die "exception: $@";
}

