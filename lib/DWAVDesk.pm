package DWAVDesk;

use 5.010001;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use DWAVDesk ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 
  'all' => [ qw(
    STATION_ALL
    STATION_EXPIRES_SET
    STATION_BLOCK_SET
    STATION_TARIFF_CHANGED
    STATION_CREATED
    STATION_DELETED
    STATION_RESTORED
    TARIFF_ID_J_PREMIUM
    TARIFF_ID_J_STANDART
    TARIFF_ID_J_CLASSIC
    TARIFF_ID_PREMIUM_SRV
    TARIFF_ID_PREMIUM
    TARIFF_ID_STANDART
    TARIFF_ID_CLASSIC
    TARIFF_ID_MOBILE
    TARIFF_ID_FREE
    GROUP_ID_UNGROUPED
    GROUP_ID_TRANSPORT
    GROUP_ID_OPERATING_SYSTEM
    GROUP_ID_STATUS
    GROUP_ID_EVERYONE
    COMPONENT_DRWEB32W
    COMPONENT_SPIDER9X
    COMPONENT_SPIDERNT
    COMPONENT_SPIDERMAILHOME
    COMPONENT_SPIDERNTSERVER
    COMPONENT_SPIDERGATE
    COMPONENT_DWPROT
    COMPONENT_VADERETRO
    COMPONENT_OUTLOOK
    COMPONENT_FIREWALL
    COMPONENT_STATE_DISABLED
    COMPONENT_STATE_OPTIONAL
    COMPONENT_STATE_REQUIRED
    PACKAGE_TYPE_WINDOWS
    PACKAGE_TYPE_ANDROID
    PACKAGE_TYPE_MACOS
    PACKAGE_TYPE_LINUX_32
    PACKAGE_TYPE_LINUX_64 ) ],
  'station' => [ qw(
    STATION_ALL
    STATION_EXPIRES_SET
    STATION_BLOCK_SET
    STATION_TARIFF_CHANGED
    STATION_CREATED
    STATION_DELETED
    STATION_RESTORED) ],
  'tariff' => [ qw(
    TARIFF_ID_J_PREMIUM
    TARIFF_ID_J_STANDART
    TARIFF_ID_J_CLASSIC
    TARIFF_ID_PREMIUM_SRV
    TARIFF_ID_PREMIUM
    TARIFF_ID_STANDART
    TARIFF_ID_CLASSIC
    TARIFF_ID_MOBILE
    TARIFF_ID_FREE ) ],
  'group' => [ qw(
    GROUP_ID_UNGROUPED
    GROUP_ID_TRANSPORT
    GROUP_ID_OPERATING_SYSTEM
    GROUP_ID_STATUS
    GROUP_ID_EVERYONE ) ],
  'component' => [ qw(
    COMPONENT_DRWEB32W
    COMPONENT_SPIDER9X
    COMPONENT_SPIDERNT
    COMPONENT_SPIDERMAILHOME
    COMPONENT_SPIDERNTSERVER
    COMPONENT_SPIDERGATE
    COMPONENT_DWPROT
    COMPONENT_VADERETRO
    COMPONENT_OUTLOOK
    COMPONENT_FIREWALL
    COMPONENT_STATE_DISABLED
    COMPONENT_STATE_OPTIONAL
    COMPONENT_STATE_REQUIRED ) ],
  'package' => [ qw(
    PACKAGE_TYPE_WINDOWS
    PACKAGE_TYPE_ANDROID
    PACKAGE_TYPE_MACOS
    PACKAGE_TYPE_LINUX_32
    PACKAGE_TYPE_LINUX_64 ) ]
);

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw();

our $VERSION = '0.55';

require XSLoader;
XSLoader::load('DWAVDesk', $VERSION);

# Preloaded methods go here.

1;
__END__

=head1 NAME

dwavd - Perl extension for Dr.Web AV-Desk XML API

=head1 SYNOPSIS

  use DWAVDesk qw( :all );
  
  sub avd_die {
    die('Error: ' . DWAVDesk::Utils::get_error()->{string});
  }

  my $server = DWAVDesk::Server->new("http://192.168.1.10", 9080, "admin", "root");
  $server or avd_die();

  my $admin = DWAVDesk::Admin->new($server) or avd_die();
  $admin->get("admin");
  
  ...
  
  my $station = DWAVDesk::Station->new($server);
  $station->get("00000000-0000-0000-0000-000000000000") or avd_die();

  ...

  my $group = DWAVDesk::Group->new($server);
  $group->get(DWAVDesk::GROUP_ID_EVERYONE) or avd_die();

  ...

  my $tariff = DWAVDesk::Tariff->new($server);
  $tariff->get(DWAVDesk::TARIFF_ID_J_CLASSIC) or avd_die();

  ... 

=head1 DESCRIPTION

  Perl binding for AV-Desk XML API allows You to use [lib]drwxmlapi library
  from your scripts. 
  
  Basically all API objects are initialized first then fetched (get method),
  updated (update method) or stored (create method) on the AV-Desk server. 
  Every get_/set_/add_/delete_/update_ method returns boolean flag indicating 
  whether the operation was successful or not (1 or 0).

  See details in generated docs and in doc directory.

=head1 SEE ALSO

  Visit http://av-desk.com for details about Dr.Web AV-Desk service. There 
  are also Python and PHP bindings for XML API.

=head1 AUTHOR

moiria, E<lt>julia@E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by moiria

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.1 or,
at your option, any later version of Perl 5 you may have available.

=cut
