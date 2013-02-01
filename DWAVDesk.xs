#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"
#include "perl_dwavd.h"

MODULE = DWAVDesk    PACKAGE = DWAVDesk
PROTOTYPES: ENABLE

# ============================================================================ #

=pod


=head1 Constants

Constants used throughout the module.

=cut


=head2 Meta Groups

Meta groups identifiers used by AV-Desk Server.

=cut


=head3 GROUP_ID_EVERYONE

Everyone Group UUID.

=cut

SV *
GROUP_ID_EVERYONE()
CODE:
  RETVAL = newSVpv(DWAVDAPI_GROUP_ID_EVERYONE, 0);
OUTPUT:
  RETVAL

=head3 GROUP_ID_STATUS

Status Group UUID.

=cut

SV *
GROUP_ID_STATUS()
CODE:
  RETVAL = newSVpv(DWAVDAPI_GROUP_ID_STATUS, 0);
OUTPUT:
  RETVAL

=head3 GROUP_ID_OPERATING_SYSTEM

Operating system Group UUID.

=cut

SV *
GROUP_ID_OPERATING_SYSTEM()
CODE:
  RETVAL = newSVpv(DWAVDAPI_GROUP_ID_OPERATING_SYSTEM, 0);
OUTPUT:
  RETVAL

=head3 GROUP_ID_TRANSPORT

Transport Group UUID.

=cut

SV *
GROUP_ID_TRANSPORT()
CODE:
  RETVAL = newSVpv(DWAVDAPI_GROUP_ID_TRANSPORT, 0);
OUTPUT:
  RETVAL

=head3 GROUP_ID_UNGROUPED

Ungrouped Group UUID.

=cut

SV *
GROUP_ID_UNGROUPED()
CODE:
  RETVAL = newSVpv(DWAVDAPI_GROUP_ID_UNGROUPED, 0);
OUTPUT:
  RETVAL


=head2 Tariff Groups

Base tariff groups identifiers.

=cut


=head3 TARIFF_ID_J_PREMIUM

J+AV+AS+PC Tariff Group UUID (Dr.Web Premium + Server).

=cut

SV *
TARIFF_ID_J_PREMIUM()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_J_PREMIUM, 0);
OUTPUT:
  RETVAL


=head3 TARIFF_ID_J_STANDART

J+AV+AS Tariff Group UUID (Dr.Web Standart + Server).

=cut

SV *
TARIFF_ID_J_STANDART()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_J_STANDART, 0);
OUTPUT:
  RETVAL


=head3 TARIFF_ID_J_CLASSIC

J+AV Tariff Group UUID (Dr.Web Classic + Server).

=cut

SV *
TARIFF_ID_J_CLASSIC()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_J_CLASSIC, 0);
OUTPUT:
  RETVAL


=head3 TARIFF_ID_PREMIUM_SRV

AV+AS+PC+SRV Tariff Group UUID (Dr.Web Premium Server).

=cut

SV *
TARIFF_ID_PREMIUM_SRV()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_PREMIUM_SRV, 0);
OUTPUT:
  RETVAL


=head3 TARIFF_ID_PREMIUM

AV+AS+PC Tariff Group UUID (Dr.Web Premium).

=cut

SV *
TARIFF_ID_PREMIUM()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_PREMIUM, 0);
OUTPUT:
  RETVAL


=head3 TARIFF_ID_STANDART

AV+AS Tariff Group UUID (Dr.Web Standart).

=cut

SV *
TARIFF_ID_STANDART()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_STANDART, 0);
OUTPUT:
  RETVAL


=head3 TARIFF_ID_CLASSIC

AV Tariff Group UUID (Dr.Web Classic).

=cut

SV *
TARIFF_ID_CLASSIC()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_CLASSIC, 0);
OUTPUT:
  RETVAL

=head3 TARIFF_ID_MOBILE

Dr.Web Mobile tariff group UUID

=cut

SV *
TARIFF_ID_MOBILE()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_MOBILE, 0);
OUTPUT:
  RETVAL

=head3 TARIFF_ID_FREE

Dr.Web Free tariff group UUID

=cut

SV *
TARIFF_ID_FREE()
CODE:
  RETVAL = newSVpv(DWAVDAPI_TARIFF_ID_FREE, 0);
OUTPUT:
  RETVAL

=head2 Components

Constants used to determine station's application components.

=cut


=head3 COMPONENT_DRWEB32W

Application component Scanner 32w.

=cut

SV *
COMPONENT_DRWEB32W()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_DRWEB32W);
OUTPUT:
  RETVAL


=head3 COMPONENT_SPIDER9X

Application component SpiderGuard 9x.

=cut

SV *
COMPONENT_SPIDER9X()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_SPIDER9X);
OUTPUT:
  RETVAL


=head3 COMPONENT_SPIDERNT

Application component SpiderGuard NT.

=cut

SV *
COMPONENT_SPIDERNT()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_SPIDERNT);
OUTPUT:
  RETVAL


=head3 COMPONENT_SPIDERMAILHOME

Application component SpiderMail Home.

=cut

SV *
COMPONENT_SPIDERMAILHOME()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_SPIDERMAILHOME);
OUTPUT:
  RETVAL


=head3 COMPONENT_SPIDERNTSERVER

Application component SpiderGuard NT Server.

=cut

SV *
COMPONENT_SPIDERNTSERVER()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_SPIDERNTSERVER);
OUTPUT:
  RETVAL


=head3 COMPONENT_SPIDERGATE

Application component SpiderGate.

=cut

SV *
COMPONENT_SPIDERGATE()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_SPIDERGATE);
OUTPUT:
  RETVAL


=head3 COMPONENT_DWPROT

Application component Selfprotection.

=cut

SV *
COMPONENT_DWPROT()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_DWPROT);
OUTPUT:
  RETVAL


=head3 COMPONENT_VADERETRO

Application component Antispam Vade Retro.

=cut

SV *
COMPONENT_VADERETRO()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_VADERETRO);
OUTPUT:
  RETVAL


=head3 COMPONENT_OUTLOOK

Application component MS Outlook Plugin.

=cut

SV *
COMPONENT_OUTLOOK()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_OUTLOOK);
OUTPUT:
  RETVAL


=head3 COMPONENT_FIREWALL

Application component Firewall.

=cut

SV *
COMPONENT_FIREWALL()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_FIREWALL);
OUTPUT:
  RETVAL


=head2 Application components states

Constants used to determine and filter application components restrictions of tariffs.

=cut


=head3 COMPONENT_STATE_DISABLED

Component is unavailable for install.

=cut

SV *
COMPONENT_STATE_DISABLED()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_DISABLED);
OUTPUT:
  RETVAL


=head3 COMPONENT_STATE_OPTIONAL

Component is optional for install.

=cut

SV *
COMPONENT_STATE_OPTIONAL()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_OPTIONAL);
OUTPUT:
  RETVAL


=head3 COMPONENT_STATE_REQUIRED

Component is required for install.

=cut

SV *
COMPONENT_STATE_REQUIRED()
CODE:
  RETVAL = newSViv(DWAVDAPI_COMPONENT_REQUIRED);
OUTPUT:
  RETVAL


=head2 Station History Event Types

Constants used to determine and filter station history entries.

=cut


=head3 STATION_ALL

All events.

=cut

SV *
STATION_ALL()
CODE:
  RETVAL = newSViv(DWAVDAPI_HIST_OPER_ALL);
OUTPUT:
  RETVAL


=head3 STATION_EXPIRES_SET

Expiration set event.

=cut

SV *
STATION_EXPIRES_SET()
CODE:
  RETVAL = newSViv(DWAVDAPI_HIST_OPER_STATION_EXPIRATION);
OUTPUT:
  RETVAL


=head3 STATION_BLOCK_SET

Block set event.

=cut

SV *
STATION_BLOCK_SET()
CODE:
  RETVAL = newSViv(DWAVDAPI_HIST_OPER_STATION_BLOCKING);
OUTPUT:
  RETVAL

=head3 STATION_TARIFF_CHANGED

Tariff change event.

=cut

SV *
STATION_TARIFF_CHANGED()
CODE:
  RETVAL = newSViv(DWAVDAPI_HIST_OPER_STATION_TARIFF);
OUTPUT:
  RETVAL


=head3 STATION_CREATED

Station created event.

=cut

SV *
STATION_CREATED()
CODE:
  RETVAL = newSViv(DWAVDAPI_HIST_OPER_STATION_CREATED);
OUTPUT:
  RETVAL

=head3 STATION_DELETED

Station deleted event.

=cut

SV *
STATION_DELETED()
CODE:
  RETVAL = newSViv(DWAVDAPI_HIST_OPER_STATION_DELETED);
OUTPUT:
  RETVAL

=head3 STATION_RESTORED

Station restored event.

=cut

SV *
STATION_RESTORED()
CODE:
  RETVAL = newSViv(DWAVDAPI_HIST_OPER_STATION_RESTORED);
OUTPUT:
  RETVAL

=head2 Known agent packages

Constants for known package types (SA DWAVDesk::Station::packages)

=cut

=head3 PACKAGE_TYPE_WINDOWS

Windows packages

=cut

SV *
PACKAGE_TYPE_WINDOWS()
CODE:
  RETVAL = newSViv(DWAVDAPI_PACKAGE_TYPE_WINDOWS);
OUTPUT:
  RETVAL

=head3 PACKAGE_TYPE_ANDROID

Android packages

=cut

SV *
PACKAGE_TYPE_ANDROID()
CODE:
  RETVAL = newSViv(DWAVDAPI_PACKAGE_TYPE_ANDROID);
OUTPUT:
  RETVAL

=head3 PACKAGE_TYPE_MACOS

MacOS packages

=cut

SV *
PACKAGE_TYPE_MACOS()
CODE:
  RETVAL = newSViv(DWAVDAPI_PACKAGE_TYPE_MACOS);
OUTPUT:
  RETVAL

=head3 PACKAGE_TYPE_LINUX_32

Linux x86 packages

=cut

SV *
PACKAGE_TYPE_LINUX_32()
CODE:
  RETVAL = newSViv(DWAVDAPI_PACKAGE_TYPE_LINUX_32);
OUTPUT:
  RETVAL

=head3 PACKAGE_TYPE_LINUX_64

Linux x86_64 packages

=cut

SV *
PACKAGE_TYPE_LINUX_64()
CODE:
  RETVAL = newSViv(DWAVDAPI_PACKAGE_TYPE_LINUX_64);
OUTPUT:
  RETVAL

=head2 Error handling

Constats used to check function return values against.

=cut

# ============================================================================ #

=head1 Statistics

Getting statistics example:

    use DWAVDesk;

    $handle = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");
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

	      # Lines below output full list of infected objects.

	      print "\t$kviruses => \n";
	      foreach $obj(@$vviruses) {
	        while ( ($kobj,$vobj) = each %$obj ) {
	          print "\t\t$kobj => $vobj\n";
	        }
	        print "\t\t************\n";
	      }
	    } else {
	      print "\t$kviruses => $vviruses\n";
	    }
          }
          print "\t==============\n";
        }
      }
      else {
        print "$k => $v\n";
      }
    }

=cut


=head2 Scans statistics

Returns: associative array with scans statistics.

Array keys:

    size - Total scanned files size

    files - Total scanned files number.

    infected - Total file infectected

    deleted - Total files deleted

    moved - Total files moved

    cured - Total files cured

    renamed - Total files renamed

    locked - Total files locked

    errors - Number of scan errors

=cut


=head2 Stations states statistics

Returns: associative array with stations states statistics.

Array keys:

    online - Stations online number

    deinstalled - Deinstalled number

    blocked - Blocked number

    expired - Expired number

    offline - Offline number

    activated - Activated number

    unactivated - Unactivated number

    total - Stations total

=cut


=head2 Infections statistics

Returns: associative array with infections statistics.

Array keys:

    deleted - Deleted files number

    cured - Cured files number

    incurable - Incurable files number

    moved - Moved files number

    locked - Locked files number

    renamed - Renamed files number

    errors - Files with errors number

    ignored - Ignored files number

    total - Infections total

=cut


=head2 Server traffic statistics

Returns: associative array with AV-Desk Server traffic statistics.

Array keys:

    in - Bytes recieved

    out - Bytes sent

    total - Total traffic in bytes

=cut


=head2 Virus statistics

Returns: associative array with virus statistics.

Array keys:

    name - Virus name

    objects_count - Number ob objects infected by virus

    infected_objects - Accociative array with information about infected objects


Infected objects array keys:

    path - Path to object

    owner - Object owner

    username - Username

    station_uuid - Station UUID

    originator - Code of application component which detected the threat.

    treatment - Code of an action the object is threated with

    type - Object type code

    infection_type - Infection type code

=cut

# ============================================================================ #


=head1 Utilities - DWAVDesk::Utils

DWAVDesk::Utils module contains helper functions.

=cut

MODULE = DWAVDesk    PACKAGE = DWAVDesk::Utils

=head2 debug()

Enables debug output. Optionally takes a path to log file.

=cut

void
debug(...)
PREINIT:
  const char *log_file_path = "perl-avdesk-debug.log";
CODE:
  if (items > 0 && SvPOK(ST(0)))
    log_file_path = (char *)SvPV_nolen(ST(0));

  dwavdapi_debug_init(log_file_path);

=head2 version()

Returns version number of dwavdapi library.

=cut

void
version()
CODE:
  ST(0) = newSVpv(DWAVDAPI_VERSION_STRING, 0);
  sv_2mortal(ST(0));
  XSRETURN(1);


=head2 get_error()

Optionally takes server resource handle.

Returns associative array, containing error information.

Array keys:

    code - Library error code

    string - Library error description


The following keys are added if server resource handle supplied:

    srvcode - Error code returned by AV-Desk server

    srvstring - Error description returned by AV-Desk server


=cut

SV *
get_error(...)
INIT:
  int   errcode = errno;
  char *error   = NULL;
  HV   *array   = (HV *)sv_2mortal((SV *)newHV());
CODE:
  hv_store(array, "code", sizeof("code") - 1, newSViv(errcode), 0);

  dwavdapi_strerror(&error, errcode);
  hv_store(array, "string", sizeof("string") - 1, newSVpv(error, strlen(error)), 0);
  dwavdapi_strfree(&error);

  if (items > 0 && sv_isobject(ST(0))) {
    dwavd__server handle = INT2PTR(dwavd__server, SvIV((SV *)SvRV(ST(0))));

    errcode = dwavdapi_srv_errno(handle);
    hv_store(array, "srvcode", sizeof("srvcode") - 1, newSViv(errcode), 0);

    dwavdapi_srv_error(handle, &error);
    hv_store(array, "srvstring", sizeof("srvstring") - 1, newSVpv(error, strlen(error)), 0);
    dwavdapi_strfree(&error);
  }

  RETVAL = newRV((SV *)array);
OUTPUT:
  RETVAL

=head2 app_name()

Takes application component identifier and returns its human-friendly name.

=cut

void
app_name(code)
  int code
CODE:
  ST(0) = newSVpv(dwavdapi_application_name(code), 0);
  sv_2mortal(ST(0));
  XSRETURN(1);

# ============================================================================ #

=head1 Administrators - DWAVDesk::Admin

DWAVDesk::Admin module contains functions to manipulate AV-Desk server administrators.

Usage example:

    use DWAVDesk;

    $handle = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");

    if($handle == NULL) {
      $error = DWAVDesk::Utils::get_error();
      print "Error: ".$error->{"string"}."\n";
      exit;
    }

    # Initialize administrator object.
    $admin = DWAVDesk::Admin->new($handle);
    $admin->set_login("PerlTestAdmin111");
    $admin->set_name("Some name");

    # Administrator creation.
    if (!$admin->create()) {
      $error = DWAVDesk::Utils::get_error($handle);
      print "Error: ".$error->{"string"}."\n";
      print "Server error: ".$error->{"srvstring"}."\n";
    } else {
      print "ID: ".$admin->id()."\n";
      print "Login: ".$admin->login()."\n";
      print "Name: ".$admin->name()."\n";
      print "Password: ".$admin->password()."\n";

      # Modify administrator parameters.
      $admin->set_description("Test admin");
      $admin->set_last_name("Some last name");
      if (!$admin->update()) {
        $error = DWAVDesk::Utils::get_error($handle);
        print "Error: ".$error->{"string"}."\n";
        print "Server error: ".$error->{"srvstring"}."\n";
      }

      print "Last name: ".$admin->last_name()."\n";
      print "Description: ".$admin->description()."\n";

      # Delete administrator.
      $admin->delete();
    }

=cut


MODULE = DWAVDesk    PACKAGE = DWAVDesk::Admin

# ============== #


=head2 Common

=cut

=head3 new()

Initializes new administrator object.

Args:

    handle - DWAVDesk::Server connection resource

Returns: initialized administrator object.


=cut

dwavd::admin
new(CLASS, handle)
  char *CLASS
  dwavd::server handle
INIT:
  dwavd_admin *admin = NULL;
CODE:
  if (!handle)
    croak("Unable to initialize administrator object because of server connection is NULL.");

  Newx(admin, (int)sizeof(dwavd_admin), dwavd_admin);

  if (admin && (admin->admin  = dwavdapi_admin_init())) {
    admin->handle = handle;
  }
  else {
    Safefree(admin);
    croak("Unable to initialize administrator object because of memory allocation error.");
  }

  RETVAL = admin;
OUTPUT:
  RETVAL

=head3 get()

Retrieves existing administrator information.

Should be used with administrator object initialized by new().

Args:

    login - Existing administrator login

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
get(self, login)
  dwavd::admin self
  const char  *login
CODE:
  dwavdapi_admin_destroy(self->admin);
  RETVAL = !dwavdapi_admin_get_info(self->handle, &self->admin, login);
OUTPUT:
  RETVAL

=head3 create()

Creates new administrator on AV-Desk server.

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
create(self)
  dwavd::admin self
INIT:
  char *id = NULL;
CODE:
  if (dwavdapi_admin_add(self->handle, self->admin, &id) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_admin_get_info(self->handle, &self->admin, dwavdapi_admin_login(self->admin));
    dwavdapi_strfree(&id);
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL

=head3 update()

Updates administrator information on AV-Desk server.

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
update(self)
  dwavd::admin self
CODE:
  if (dwavdapi_admin_change(self->handle, self->admin) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_admin_get_info(self->handle, &self->admin, dwavdapi_admin_login(self->admin));
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL

=head3 delete()

Deletes an administrator from AV-Desk server.

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
delete(self)
  dwavd::admin self
CODE:
  RETVAL = !dwavdapi_admin_delete(self->handle, dwavdapi_admin_login(self->admin));
OUTPUT:
  RETVAL

void
DESTROY(self)
  dwavd::admin self
CODE:
  dwavdapi_admin_destroy(self->admin);
  Safefree(self);

=head3 created_time()

Returns creation timestamp for administrator account.

Should be used with administrator object initialized by new().

=cut

time_t
created_time(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_created_time(self->admin);
OUTPUT:
  RETVAL

=head3 modified_time()

Returns last modified timestamp for administrator account.

Should be used with administrator object initialized by new().

=cut

time_t
modified_time(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_modified_time(self->admin);
OUTPUT:
  RETVAL


=head3 set_id()

Sets administrator identifier.

Args:

    id - Identifier

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_id(self, val)
  dwavd::admin self
  const char * val
CODE:
  RETVAL = !dwavdapi_admin_set_id(self->admin, val);
OUTPUT:
  RETVAL


=head3 id()

Returns administrator identifier.

Should be used with administrator object initialized by new().

=cut

char *
id(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_id(self->admin);
OUTPUT:
  RETVAL


=head3 set_name()

Sets administrator first name.

Args:

    name - First name

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_name(self , val)
  dwavd::admin self
  const char  *val
CODE:
  RETVAL = !dwavdapi_admin_set_name(self->admin, val);
OUTPUT:
  RETVAL


=head3 name()

Returns administrator first name.

Should be used with administrator object initialized by new().

=cut

char *
name(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_name(self->admin);
OUTPUT:
  RETVAL


=head3 set_description()

Sets administrator description.

Args:

    description - Description

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_description(self , val)
  dwavd::admin self
  const char  *val
CODE:
  RETVAL = !dwavdapi_admin_set_description(self->admin, val);
OUTPUT:
  RETVAL


=head3 description()

Returns administrator description.

Should be used with administrator object initialized by new().

=cut

char *
description(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_description(self->admin);
OUTPUT:
  RETVAL

# ============== #


=head2 Groupings

=cut


=head3 groups_count()

Returns count of groups administared by administrator.

Should be used with administrator object initialized by new().

=cut

unsigned long
groups_count(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_groups_count(self->admin);
OUTPUT:
  RETVAL


=head3 groups()

Returns an array of identifiers of groups administered by administrator.

Should be used with administrator object initialized by new().

Example:

    $admin = DWAVDesk::Admin->new($handle);
    $admin->get("SomeGroupID");
    $groups = $admin->groups();
    foreach(@$groups){
        print $_."\n";
    }

=cut

SV *
groups(self)
  dwavd::admin self
INIT:
  unsigned long       i;
  const unsigned long groups_count = dwavdapi_admin_groups_count(self->admin);
  char              **groups       = dwavdapi_admin_groups_array(self->admin);
  const char         *group        = NULL;
  AV                 *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < groups_count; i++) {
    group = *(groups + i);
    av_push(result, newSVpv(group, strlen(group)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 add_to_group()

Sets administered group for administrator.

Args: 

    group_id - Group ID

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

Example:

    $admin = DWAVDesk::Admin->new($handle);
    $admin->set_id("SomeID");
    $admin->add_to_group("SomeGroup");
    $admin->delete_from_group("AnotherGroup");
    $admin->update();

See also: delete_from_group()

=cut

bool
add_to_group(self , val)
  dwavd::admin self
  const char * val
CODE:
  RETVAL = !dwavdapi_admin_add_to_group(self->admin, val);
OUTPUT:
  RETVAL

=head3 delete_from_group()

Removes administrator from administered group.

Args: 

    group_id - Group ID

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

See also: add_to_group()

=cut

bool
delete_from_group(self , val)
  dwavd::admin self
  const char  *val
CODE:
  RETVAL = !dwavdapi_admin_delete_from_group(self->admin, val);
OUTPUT:
  RETVAL

# ============== #


=head2 Other

=cut


=head3 set_login()

Sets administrator login.

Args: 

    login - Login

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_login(self , val)
  dwavd::admin self
  const char  *val
CODE:
  RETVAL = !dwavdapi_admin_set_login(self->admin, val);
OUTPUT:
  RETVAL


=head3 login()

Returns administrator login.

Should be used with administrator object initialized by new().

=cut

char *
login(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_login(self->admin);
OUTPUT:
  RETVAL

=head3 set_password()

Sets administrator password.

Args: 

    password - Password

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_password(self , val)
  dwavd::admin self
  const char  *val
CODE:
  RETVAL = !dwavdapi_admin_set_password(self->admin, val);
OUTPUT:
  RETVAL


=head3 password()

Returns administrator password.

Should be used with administrator object initialized by new().

=cut

char *
password(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_password(self->admin);
OUTPUT:
  RETVAL

=head3 set_last_name()

Sets administrator last name.

Args: 

    last_name - Last name

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_last_name(self , val)
  dwavd::admin self
  const char  *val
CODE:
  RETVAL = !dwavdapi_admin_set_last_name(self->admin, val);
OUTPUT:
  RETVAL


=head3 last_name()

Returns administrator last name.

Should be used with administrator object initialized by new().

=cut

char *
last_name(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_last_name(self->admin);
OUTPUT:
  RETVAL


=head3 set_middle_name()

Sets administrator middle name.

Args: 

    middle_name - Middle name

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_middle_name(self , val)
  dwavd::admin self
  const char  *val
CODE:
  RETVAL = !dwavdapi_admin_set_middle_name(self->admin, val);
OUTPUT:
  RETVAL


=head3 middle_name()

Returns administrator middle name.

Should be used with administrator object initialized by new().

=cut

char *
middle_name(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_middle_name(self->admin);
OUTPUT:
  RETVAL


=head3 set_readonly()

Sets read only restriction for administrator.

Args:

    bool_flag - 1 - for readonly, otherwise - 0

Should be used with administrator object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_readonly(self , val)
  dwavd::admin self
  unsigned     val
CODE:
  RETVAL = !dwavdapi_admin_set_readonly(self->admin, val);
OUTPUT:
  RETVAL

=head3 is_readonly()

Returns read only restriction for administrator.

Should be used with administrator object initialized by new().

Returns: 1 - for readonly, otherwise - 0.

=cut

bool
is_readonly(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_is_readonly(self->admin);
OUTPUT:
  RETVAL

=head3 is_global_admin()

Returns 1 for global server administrator, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_global_admin(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_is_global_admin(self->admin);
OUTPUT:
  RETVAL

=head3 is_group_admin()

Returns 1 for group administrator, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_group_admin(self)
  dwavd::admin self
CODE:
  RETVAL = dwavdapi_admin_is_group_admin(self->admin);
OUTPUT:
  RETVAL

# ============================================================================ #


=head1 Stations - DWAVDesk::Station

DWAVDesk::Station - module contains functions to manipulate AV-Desk server stations.

Usage example:

    use DWAVDesk;
    use Time::Local;
    use Time::localtime;

    $handle = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");

    if($handle == NULL) {
      $error = DWAVDesk::Utils::get_error();
      print "Error: ".$error->{"string"}."\n";
      exit;
    }

    my $from = timelocal(0,0,0,1,0,2011);
    my $till = timelocal(0,0,0,1,0,2012);

    # Station initialization.
    $station = DWAVDesk::Station->new($handle);
    $station->set_name("PerlTestStation");
    $station->set_parent_id("test_grp");
    $station->set_country_by_numcode(643);
    $station->set_tariff_id(DWAVDesk::TARIFF_ID_STANDART);
    $station->set_block($from, $till);

    # Station creation.
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

       # Station modification.
      $station->set_description("Test station");
      if (!$station->update()) {
        $error = DWAVDesk::Utils::get_error($handle);
        print "Error: ".$error->{"string"}."\n";
        print "Server error: ".$error->{"srvstring"}."\n";
      }
      print "Description: ".$station->description()."\n";

      # Station removal.
      $station->delete();
    }

=cut


MODULE = DWAVDesk    PACKAGE = DWAVDesk::Station

# ============== #


=head2 Common

=cut


=head3 new()

Initializes new station object.

Args:

    handle - DWAVDesk::Server connection resource

Returns: initialized station object.

=cut

dwavd::station 
new(CLASS, handle)
  char *CLASS
  dwavd::server handle
INIT:
  dwavd_station *station = NULL;
CODE:
  if (!handle)
    croak("Unable to initialize station object because of server connection handle is NULL.");

  Newx(station, (int)sizeof(dwavd_station), dwavd_station);

  if (station && (station->station = dwavdapi_station_init())) {
    station->handle = handle;
  }
  else {
    Safefree(station);
    croak("Unable to initialize station object because of memory allocation error.");
  }

  RETVAL = station;
OUTPUT:
  RETVAL


=head3 get()

Retrieves existing station information.

Should be used with station object initialized by new().

Args:

    id - Existing station ID

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
get(self, id)
  dwavd::station self
  const char    *id
CODE:
  dwavdapi_station_destroy(self->station);
  RETVAL = !dwavdapi_station_get_info(self->handle, &self->station, id);
OUTPUT:
  RETVAL

=head3 create()

Creates new station on AV-Desk server.

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
create(self)
  dwavd::station self
INIT:
  char *id = NULL;
CODE:
  if (dwavdapi_station_add(self->handle, self->station, &id) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_station_get_info(self->handle, &self->station, id);
    dwavdapi_strfree(&id);
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL

=head3 update()

Updates station information on AV-Desk server.

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
update(self)
  dwavd::station self
CODE:
  if (dwavdapi_station_change(self->handle, self->station) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_station_get_info(self->handle, &self->station, dwavdapi_station_id(self->station));
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL

=head3 delete()

Deletes a station from AV-Desk server.

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
delete(self)
  dwavd::station self
CODE:
  RETVAL = !dwavdapi_station_delete(self->handle, dwavdapi_station_id(self->station));
OUTPUT:
  RETVAL

void
DESTROY(self)
  dwavd::station self
CODE:
  if (self->station) {
    dwavdapi_station_destroy(self->station);
  }
  Safefree(self);

=head3 created_time()

Returns creation timestamp for station.

Should be used with station object initialized by new().

=cut

time_t
created_time(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_created_time(self->station);
OUTPUT:
  RETVAL

=head3 modified_time()

Returns last modified timestamp for station.

Should be used with station object initialized by new().

=cut

time_t
modified_time(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_modified_time(self->station);
OUTPUT:
  RETVAL

=head3 set_id()

Sets station identifier.

Args: 

    id - Identifier

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_id(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_id(self->station, val);
OUTPUT:
  RETVAL

=head3 id()

Returns station identifier.

Should be used with station object initialized by new().

=cut

char *
id(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_id(self->station);
OUTPUT:
  RETVAL

=head3 set_name()

Sets station name.

Args:

    name - Name

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_name(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_name(self->station, val);
OUTPUT:
  RETVAL

=head3 name()

Returns station name.

Should be used with station object initialized by new().

=cut

char *
name(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_name(self->station);
OUTPUT:
  RETVAL

=head3 set_description()

Sets station description.

Args:

    description - Description

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_description(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_description(self->station, val);
OUTPUT:
  RETVAL

=head3 description()

Returns station description.

Should be used with station object initialized by new().

=cut

char *
description(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_description(self->station);
OUTPUT:
  RETVAL

=head3 config_url()

Returns station's configuration file link.

Should be used with station object initialized by new().

=cut

char *
config_url(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_config(self->station);
OUTPUT:
  RETVAL

=head3 packages()

Returns a list of packages' information available for this station.

Should be used with station object initialized by new().

=cut

SV *
packages(self)
  dwavd::station self
INIT:
  dwavdapi_list    *packages = dwavdapi_station_packages_list(self->station);
  dwavdapi_package *package  = NULL;
  HV               *pachash  = NULL;
  AV               *results  = (AV *)sv_2mortal((SV *)newAV());
  const char *url;
  unsigned    type;
CODE:
  if (packages) {
    do {
      package = (dwavdapi_package *)dwavdapi_list_current_data(packages);
      pachash = (HV *)sv_2mortal((SV *)newHV());

      url = package->url;
      if (url)
        hv_store(pachash, "url", sizeof("url") - 1, newSVpv(url, strlen(url)), 0);

      type = package->type;
      hv_store(pachash, "type", sizeof("type") - 1, newSVuv(type), 0);
  
      av_push(results, newRV((SV *)pachash));
    } while (dwavdapi_list_next(packages) != DWAVDAPI_FAILURE);
  }
  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL

# ============== #

=head2 Groupings

=cut


=head3 set_parent_id()

Sets station parent (main) group by ID.

Args:

    value - Parent group ID

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_parent_id(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_parent_id(self->station, val);
OUTPUT:
  RETVAL

=head3 parent_id()

Returns station parent (main) group identifier.

Should be used with station object initialized by new().

=cut

char *
parent_id(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_parent_id(self->station);
OUTPUT:
  RETVAL

=head3 groups_count()

Returns count of groups station belongs to.

Should be used with station object initialized by new().

=cut

unsigned
groups_count(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_groups_count(self->station);
OUTPUT:
  RETVAL


=head3 groups()

Returns an array of identifiers of groups station belongs to.

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");
    $groups = $station->groups();
    foreach(@$groups){
        print $_."\n";
    }

=cut

SV *
groups(self)
  dwavd::station self
INIT:
  unsigned       i;
  const unsigned groups_count = dwavdapi_station_groups_count(self->station);
  char         **groups       = dwavdapi_station_groups_array(self->station);
  char          *group        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < groups_count; i++) {
    group = *(groups + i);
    av_push(result, newSVpv(group, strlen(group)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 add_to_group()

Adds station to group.

Args:

    group_id - Group ID

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->set_id("SomeID");
    $station->add_to_group("SomeGroup");
    $station->delete_from_group("AnotherGroup");
    $station->update();

See also: delete_from_group()

=cut

bool
add_to_group(self , id)
  dwavd::station self
  const char    *id
CODE:
  RETVAL = !dwavdapi_station_add_to_group(self->station, id);
OUTPUT:
  RETVAL


=head3 delete_from_group()

Removes station from group.

Args:

    group_id - Group ID

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

See also: add_to_group()

=cut

bool
delete_from_group(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_delete_from_group(self->station, val);
OUTPUT:
  RETVAL

# ============== #


=head2 E-mails

=cut

=head3 emails_count()

Returns count of e-mails associated with station.

Should be used with station object initialized by new().

=cut

unsigned int
emails_count(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_emails_count(self->station);
OUTPUT:
  RETVAL

=head3 emails()

Returns an array of e-mails associated with station.

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");
    $emails = $station->emails();
    foreach(@$emails){
        print $_."\n";
    }

=cut

SV* 
emails(self)
  dwavd::station self
INIT:
  unsigned       i;
  const unsigned emails_count = dwavdapi_station_emails_count(self->station);
  char         **emails       = dwavdapi_station_emails_array(self->station);
  const char    *email        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < emails_count; i++) {
    email = *(emails + i);
    av_push(result, newSVpv(email, strlen(email)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 add_email()

Adds station email.

Args:

    value - E-mail to add

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->set_id("SomeID");
    $station->add_email("some\@mail.com");
    $station->delete_email("another\@mail.com");
    $station->update();

See also: delete_email()

=cut

bool
add_email(self, val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_add_email(self->station, val);
OUTPUT:
  RETVAL

=head3 delete_email()

Removes station from group.

Args:

    value - E-mail to delete

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

See also: add_email()

=cut

bool
delete_email(self, val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_delete_email(self->station, val);
OUTPUT:
  RETVAL

# ============== #


=head2 Station place

=cut


=head3 set_organization()

Sets station organization name.

Args:

    value - Organization name

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_organization(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_organization(self->station, val);
OUTPUT:
  RETVAL

=head3 organization()

Returns station organization name.

Should be used with station object initialized by new().

=cut

char *
organization(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_organization(self->station);
OUTPUT:
  RETVAL

=head3 set_department()

Sets station department name.

Args:

    value - Department name

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_department(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_department(self->station, val);
OUTPUT:
  RETVAL

=head3 department()

Returns station department.

Should be used with station object initialized by new().

=cut

char *
department(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_department(self->station);
OUTPUT:
  RETVAL

=head3 set_latitude()

Sets station latitude.

Args:

    value - Latitude as integer

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_latitude(self, val)
  dwavd::station self
  long           val
CODE:
  RETVAL = !dwavdapi_station_set_latitude(self->station, val);
OUTPUT:
  RETVAL


=head3 latitude()

Returns station latitude as integer.

Should be used with station object initialized by new().

=cut

long
latitude(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_latitude(self->station);
OUTPUT:
  RETVAL

=head3 set_longitude()

Sets station longitude.

Args:

    value - Longitude as integer

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_longitude(self , val)
  dwavd::station self
  long           val
CODE:
  RETVAL = !dwavdapi_station_set_longitude(self->station, val);
OUTPUT:
  RETVAL

=head3 longitude()

Returns station longitude as integer.

Should be used with station object initialized by new().

=cut

long
longitude(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_longitude(self->station);
OUTPUT:
  RETVAL

=head3 set_country_by_numcode()

Sets station country by ISO numeric code.

Args:

    value - Country ISO 3166 three-digit numeric code

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_country_by_numcode(self, val)
  dwavd::station self
  unsigned       val
CODE:
  RETVAL = !dwavdapi_station_set_country_by_numcode(self->station, val);
OUTPUT:
  RETVAL

=head3 country()

Returns station country ISO 3166 numcode.

Should be used with station object initialized by new().

=cut

int
country(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_country_numcode(dwavdapi_station_country(self->station));
OUTPUT:
  RETVAL

=head3 set_province()

Sets station province.

Args:

    value - Province name

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_province(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_province(self->station, val);
OUTPUT:
  RETVAL

=head3 province()

Returns station province.

Should be used with station object initialized by new().

=cut

char *
province(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_province(self->station);
OUTPUT:
  RETVAL

=head3 set_city()

Sets station city.

Args:

    value - City

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_city(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_city(self->station, val);
OUTPUT:
  RETVAL

=head3 city()

Returns station city.

Should be used with station object initialized by new().

=cut

char *
city(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_city(self->station);
OUTPUT:
  RETVAL

=head3 set_street()

Sets station street.

Args:

    value - Street

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_street(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_street(self->station, val);
OUTPUT:
  RETVAL

=head3 street()

Returns station street.

Should be used with station object initialized by new().

=cut

char *
street(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_street(self->station);
OUTPUT:
  RETVAL

=head3 set_floor()

Sets station floor.

Args: 

    value - Floor

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_floor(self, val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_floor(self->station, val);
OUTPUT:
  RETVAL

=head3 floor()

Returns station floor.

Should be used with station object initialized by new().

=cut

char *
floor(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_floor(self->station);
OUTPUT:
  RETVAL

=head3 set_room()

Sets station room.

Args: 

    value - Room

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_room(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_room(self->station, val);
OUTPUT:
  RETVAL

=head3 room()

Returns station room.

Should be used with station object initialized by new().

=cut

char *
room(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_room(self->station);
OUTPUT:
  RETVAL

# ============== #


=head2 Restrictions

=cut

=head3 set_expires_time()

Sets station expiration time.

Args:

    value - Expiration timestamp

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_expires_time(self , val)
  dwavd::station self
  time_t         val
CODE:
  RETVAL = !dwavdapi_station_set_expires_time(self->station, val);
OUTPUT:
  RETVAL

=head3 expires_time()

Returns station expiration time as timestamp.

Should be used with station object initialized by new().

=cut

time_t
expires_time(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_expires_time(self->station);
OUTPUT:
  RETVAL

=head3 set_block()


Sets station block period.

Args:

    block_begin - Block begin timestamp
    block_end - Block end timestamp

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

Example:

    use Time::Local;
    use Time::localtime;

    my $from = timelocal(0,0,0,1,0,2011);
    my $till = timelocal(0,0,0,1,0,2012);

    $station = DWAVDesk::Station->new($handle);
    $station->set_name("PerlTestStation");
    $station->set_block($from, $till);

    $station->update();
    print "Block begins: " . ctime($station->block_time_begin())."\n";
    print "Block ends: " . ctime($station->block_time_end())."\n";

=cut

bool
set_block(self, block_begins, block_ends)
  dwavd::station self
  time_t         block_begins
  time_t         block_ends
CODE:
  RETVAL = !dwavdapi_station_set_block_time(self->station, block_begins, block_ends);
OUTPUT:
  RETVAL

=head3 block_time_begin()

Returns station block begin timestamp.

Should be used with station object initialized by new().

=cut

time_t
block_time_begin(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_block_time_begin(self->station);
OUTPUT:
  RETVAL

=head3 block_time_begin()

Returns station block end timestamp.

Should be used with station object initialized by new().

=cut

time_t
block_time_end(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_block_time_end(self->station);
OUTPUT:
  RETVAL

# ============== #


=head2 Other

=cut


=head3 set_password()

Sets station password.

Args:

    password - Password

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_password(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_password(self->station, val);
OUTPUT:
  RETVAL

=head3 password()

Returns station password.

Should be used with station object initialized by new().

=cut

char *
password(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_password(self->station);
OUTPUT:
  RETVAL

=head3 set_tariff_id()

Sets station tariff by ID.

Args:

    value - Tariff ID

Should be used with station object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_tariff_id(self , val)
  dwavd::station self
  const char    *val
CODE:
  RETVAL = !dwavdapi_station_set_tariff_id(self->station, val);
OUTPUT:
  RETVAL


=head3 tariff_id()

Returns tariff identifier.

Should be used with station object initialized by new().

=cut

char *
tariff_id(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_tariff_id(self->station);
OUTPUT:
  RETVAL

=head3 grace_period()

Returns station grace period in days.

Should be used with station object initialized by new().

=cut

int
grace_period(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_grace_period(self->station);
OUTPUT:
  RETVAL

=head3 state()

Returns station state as array.

Array keys:

    code - State ID
    str - State description

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);

    $station->get("SomeID");
    $state = $station->state();

    print "State code: ".$state->{"code"}."\n";
    print "State: ".$state->{"str"}."\n";

=cut

SV *
state(self)
  dwavd::station self
INIT:
  HV         *rh    = (HV *)sv_2mortal((SV *)newHV());
  int         code  = dwavdapi_station_state(self->station);
  const char *state;
CODE:
  hv_store(rh, "code", sizeof("code") - 1, newSViv(code), 0);

  state = (char *)dwavdapi_station_state_str(self->station);
  if (state)
    hv_store(rh, "str", sizeof("str") - 1, newSVpv(state, strlen(state)), 0);

  RETVAL = newRV((SV *)rh);
OUTPUT:
  RETVAL


=head3 os_str()

Returns station OS name.

Should be used with station object initialized by new().

=cut

char *
os_str(self)
  dwavd::station self
CODE:
  RETVAL = (char *)dwavdapi_station_os_str(self->station);
OUTPUT:
  RETVAL


=head3 lastseen_time()

Returns station last seen timestamp.

Should be used with station object initialized by new().

=cut

time_t
lastseen_time(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_lastseen_time(self->station);
OUTPUT:
  RETVAL


=head3 lastseen_addr()

Returns network address used by station last time.

Should be used with station object initialized by new().

=cut

char *
lastseen_addr(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_lastseen_addr(self->station);
OUTPUT:
  RETVAL


=head3 url()

Returns station agent installation package download URL.

Should be used with station object initialized by new().

=cut

char *
url(self)
  dwavd::station self
CODE:
  RETVAL = dwavdapi_station_url(self->station);
OUTPUT:
  RETVAL


=head3 bases()

Returns array with station anti-virus bases data.

Module data is represented as array with keys:

    version - Base version
    file_name - Base file name
    created - Base created timestamp
    viruses - Viruses total

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");
    $bases = $station->bases();
    foreach(@$bases){
        print "file_name " . $_->{"file_name"} . "\n";
    }

=cut

SV *
bases(self)
dwavd::station self
INIT:
  dwavdapi_list *lst       = dwavdapi_station_bases_list(self->station);
  dwavdapi_base *station   = NULL;
  HV            *rh        = NULL;
  AV            *results   = (AV *)sv_2mortal((SV *)newAV());
  const char    *version;
  const char    *file_name;
  unsigned       created;
  unsigned       viruses;
CODE:
  if (lst) {
    do {
      station = (dwavdapi_base *)dwavdapi_list_current_data(lst);
      rh      = (HV *)sv_2mortal((SV *)newHV());

      version = station->version;
      if(version)
        hv_store(rh, "version", sizeof("version") - 1, newSVpv(version, strlen(version)), 0);

      file_name = station->file_name;
      if(file_name)
        hv_store(rh, "file_name", sizeof("file_name") - 1, newSVpv(file_name, strlen(file_name)), 0);

      created = station->created;
      hv_store(rh, "created", sizeof("created") - 1, newSVuv(created), 0);

      viruses = station->viruses;
      hv_store(rh, "viruses", sizeof("viruses") - 1, newSVuv(viruses), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL

=head3 modules()

Returns array with station modules data.

Module data is represented as array with keys:

    file_size - Module file size
    created - Created timestamp
    modified - Modified timestamp
    file_name - Module file name
    hash - Module hash
    name - Module name
    version - Module version

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");
    $modules = $station->modules();
    foreach(@$modules){
        print "Name:" . $_->{"name"} . ", file name " . $_->{"file_name"} . "\n";
    }

=cut

SV *
modules(self)
  dwavd::station self
INIT:
  dwavdapi_list   *lst     = dwavdapi_station_modules_list(self->station);
  dwavdapi_module *station = NULL;
  HV              *rh      = NULL;
  AV              *results = (AV *)sv_2mortal((SV *)newAV());
  double           file_size;
  unsigned         created;
  unsigned         modified;
  const char      *file_name;
  const char      *hash;
  const char      *name;
  const char      *version;
CODE:
  if (lst) {
    do {
      station = (dwavdapi_module *)dwavdapi_list_current_data(lst);
      rh      = (HV *)sv_2mortal((SV *)newHV());

      file_size = station->file_size;
      hv_store(rh, "file_size", sizeof("file_size") - 1, newSVnv(file_size), 0);

      created = station->created;
      hv_store(rh, "created", sizeof("created") - 1, newSVuv(created), 0);

      modified = station->modified;
      hv_store(rh, "modified", sizeof("modified") - 1, newSVuv(modified), 0);

      file_name = station->file_name;
      if (file_name)
        hv_store(rh, "file_name", sizeof("file_name") - 1, newSVpv(file_name, strlen(file_name)), 0);

      hash = station->hash;
      if(hash)
        hv_store(rh, "hash", sizeof("hash") - 1, newSVpv(hash, strlen(hash)), 0);

      name = station->name;
      if (name)
        hv_store(rh, "name", sizeof("name") - 1, newSVpv(name, strlen(name)), 0);

      version = station->version;
      if (version)
        hv_store(rh, "version", sizeof("version") - 1, newSVpv(version, strlen(version)), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }
  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL

=head3 components()

Returns array with station components data.

Component data is represented as array with keys:

    code - Component ID
    value - Component state
    inherited_group_id - Group ID component is inherited from

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");
    $components = $station->components();
    foreach(@$components){
        print DWAVDesk::Utils::app_name($_->{"code"}) . ", value " . $_->{"value"} . "\n";
    }

=cut

SV *
components(self)
  dwavd::station self
INIT:
  dwavdapi_list      *lst     = dwavdapi_station_components_list(self->station);
  dwavdapi_component *station = NULL;
  HV                 *rh      = NULL;
  AV                 *results = (AV *)sv_2mortal((SV *)newAV());
  int                 value;
  unsigned            code;
  const char         *inherited_group_id;
CODE:
  if (lst) {
    do {
      station = (dwavdapi_component *)dwavdapi_list_current_data(lst);
      rh      = (HV *)sv_2mortal((SV *)newHV());

      value = station->value;
      hv_store(rh, "value", sizeof("value") - 1, newSViv(value), 0);

      code = station->code;
      hv_store(rh, "code", sizeof("code") - 1, newSVuv(code), 0);

      inherited_group_id = station->inherited_group_id;
      if (inherited_group_id)
        hv_store(rh,
                 "inherited_group_id",
                 sizeof("inherited_group_id") - 1,
                 newSVpv(inherited_group_id, strlen(inherited_group_id)),
                 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL

=head3 components_running()

Returns array with station running components data.

Component data is represented as array with keys:

    code - Component ID
    started - Run started timestamp
    type - Component type ID
    user - Owner user
    params - Additional components parameters

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");
    $components_running = $station->components_running();
    foreach(@$components_running){
        print DWAVDesk::Utils::app_name($_->{"code"}) . "\n";
    }

=cut

SV *
components_running(self)
dwavd::station self
INIT:
  dwavdapi_list              *lst     = dwavdapi_station_components_running_list(self->station);
  dwavdapi_running_component *station = NULL;
  HV                         *rh      = NULL;
  AV                         *results = (AV *)sv_2mortal((SV *)newAV());
  unsigned                    code;
  unsigned                    started;
  unsigned                    type;
  const char                 *user;
  const char                 *params;
CODE:
  if (lst) {
    do {
      station = (dwavdapi_running_component *)dwavdapi_list_current_data(lst);
      rh      = (HV *)sv_2mortal((SV *)newHV());

      code = station->code;
      hv_store(rh, "code", sizeof("code") - 1, newSVuv(code), 0);

      started = station->started;
      hv_store(rh, "started", sizeof("started") - 1, newSVuv(started), 0);

      type = station->type;
      hv_store(rh, "type", sizeof("type") - 1, newSVuv(type), 0);

      user = station->user;
      if (user)
        hv_store(rh, "user", sizeof("user") - 1, newSVpv(user, strlen(user)), 0);

      params = station->params;
      if (params)
        hv_store(rh, "params", sizeof("params") - 1, newSVpv(params, strlen(params)), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL


=head3 components_installed()

Returns array with station installed components data.

Component data is represented as array with keys:

    code - Component ID
    installed - Installed timestamp
    path - Installation path
    server - Server address

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");
    $components_installed = $station->components_installed();
    foreach(@$components_installed){
        print DWAVDesk::Utils::app_name($_->{"code"}) . "\n";
    }

=cut

SV *
components_installed(self)
  dwavd::station self
INIT:
  dwavdapi_list                *lst     = dwavdapi_station_components_installed_list(self->station);
  dwavdapi_installed_component *station = NULL;
  HV                           *rh      = NULL;
  AV                           *results = (AV *)sv_2mortal((SV *)newAV());
  unsigned                      code;
  unsigned                      installed;
  const char                   *path;
  const char                   *server;
CODE:
  if (lst) {
    do {
      station = (dwavdapi_installed_component *)dwavdapi_list_current_data(lst);
      rh      = (HV *)sv_2mortal((SV *)newHV());

      code = station->code;
      hv_store(rh, "code", sizeof("code") - 1, newSVuv(code), 0);

      installed = station->installed;
      hv_store(rh, "installed", sizeof("installed") - 1, newSVuv(installed), 0);

      path = station->path;
      if (path)
        hv_store(rh, "path", sizeof("path") - 1, newSVpv(path, strlen(path)), 0);

      server = station->server;
      if (server)
        hv_store(rh, "server", sizeof("server") - 1, newSVpv(server, strlen(server)), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL


=head3 history()

Returns array with station history entries.

Args: 

    from - From filter timestamp or 0 to get data since 1970
    till - Till filter timestamp. 0 to get data till current day
    oprs - Event ID constant (see 'Station History Event Types')

History entries are represented as arrays with keys:

    oper - Event ID constant (see 'Station History Event Types')
    created - Event issued timestamp
    datetime - Event timestamp
    begin - Event period begin timestamp
    end - Event period end timestamp
    tariff - Tariff ID
    tariff_name - Tariff name

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("test_av");
    $history = $station->history(0,0,DWAVDesk::STATION_TARIFF_CHANGED);
    foreach(@$history){
        print $_->{"tariff_name"} . "\n";
    }

=cut

SV* 
history(self, till, from, oprs)
  dwavd::station         self
  time_t                 from
  time_t                 till
  dwavdapi_history_opers oprs
INIT:
  dwavdapi_list    *lst     = NULL;
  dwavdapi_history *station = NULL;
  HV               *rh      = NULL;
  AV               *results = NULL;
  const char       *rate;
  const char       *rate_name;
CODE:
  if (dwavdapi_station_get_history_list(self->handle, &lst, self->station->id, from, till, oprs) == DWAVDAPI_SUCCESS) {
    results = (AV *)sv_2mortal((SV *)newAV());

    if (lst) {
      do {
        station = (dwavdapi_history *)dwavdapi_list_current_data(lst);
        rh      = (HV *)sv_2mortal((SV *)newHV());

        hv_store(rh, "oper", sizeof("oper") - 1, newSVuv(station->oper), 0);
        hv_store(rh, "created", sizeof("created") - 1, newSVuv(station->created), 0);
        hv_store(rh, "datetime", sizeof("datetime") - 1, newSVuv(station->datetime), 0);
        hv_store(rh, "begin", sizeof("begin") - 1, newSVuv(station->begin), 0);
        hv_store(rh, "end", sizeof("end") - 1, newSVuv(station->end), 0);

        rate = station->rate;
        if (rate)
          hv_store(rh, "tariff", sizeof("tariff") - 1, newSVpv(rate, strlen(rate)), 0);

        rate_name = station->rate_name;
        if (rate_name)
          hv_store(rh, "tariff_name", sizeof("tariff_name") - 1, newSVpv(rate_name, strlen(rate_name)), 0);

        av_push(results, newRV((SV *)rh));
      } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);

      dwavdapi_list_destroy(lst, (dwavdapi_dtor_funct)dwavdapi_history_destroy);
    }

    RETVAL = newRV((SV *)results);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL

=head3 rights()

Returns array with station rights data.

Rights data is represented as array with keys:

    code - Right ID
    value - Right value
    inherited_group_id - Group ID right is inherited from

Should be used with station object initialized by new().

Example:

    $rights = $station->rights();
    foreach(@$rights){
        print "code: " . DWAVDesk::Utils::app_name($_->{"code"}) . "\n";
    }

=cut

SV* 
rights(self)
  dwavd::station self
INIT:
  dwavdapi_list  *lst     = dwavdapi_station_rights_list(self->station);
  dwavdapi_right *station = NULL;
  HV             *rh      = NULL;
  AV             *results = (AV *)sv_2mortal((SV *)newAV());
  int             value;
  unsigned        code;
  const char     *inherited_group_id;
CODE:
  if (lst) {
    do {
      station = (dwavdapi_right *)dwavdapi_list_current_data(lst);
      rh      = (HV *)sv_2mortal((SV *)newHV());

      value = station->value;
      hv_store(rh, "value", sizeof("value") - 1, newSViv(value), 0);

      code = station->code;
      hv_store(rh, "code", sizeof("code") - 1, newSVuv(code), 0);

      inherited_group_id = station->inherited_group_id;
      if(inherited_group_id)
        hv_store(rh,
                 "inherited_group_id",
                 sizeof("inherited_group_id") - 1,
                 newSVpv(inherited_group_id, strlen(inherited_group_id)),
                 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL

=head3 key()

Returns array with station key data.

Key data is represented as array with keys:

    key - Key
    inherited_group_id - Group ID key is inherited from

Should be used with station object initialized by new().

Example:

    $station = DWAVDesk::Station->new($handle);
    $station->get("SomeID");

    $key = $station->key();
    print $key->{"key"}."\n";
    print $key->{"inherited_group_id"}."\n";

=cut

SV *
key(self)
  dwavd::station self
INIT:
  HV           *rh  = (HV *)sv_2mortal((SV *)newHV());
  dwavdapi_key *key = dwavdapi_station_key(self->station);
  const char   *inherited_group_id;
  const char   *ckey;
CODE:
  inherited_group_id = key->inherited_group_id;
  if (inherited_group_id)
    hv_store(rh,
             "inherited_group_id",
             sizeof("inherited_group_id") - 1,
             newSVpv(inherited_group_id, strlen(inherited_group_id)),
             0);

  ckey = key->key;
  if (ckey)
    hv_store(rh, "key", sizeof("key") - 1, newSVpv(ckey, strlen(ckey)), 0);

  RETVAL = newRV((SV *)rh);
OUTPUT:
  RETVAL

=head3 send_message()

Sends a message to station using agent.

Args: 

    message - Message text which can contain {link} macros to place link given in link parameters to
    url_text - URL description text to be placed in {link} macros
    url - URL to be placed in {link} macros
    logo - Absolute path to a logo .bmp file to show in message
    logo_url - URL to go to on a logo click
    logo_text - Description text for a logo

Should be used with station object initialized by new().

Example:

    $message = "Please visit {link}.";
    $url = "www.drweb.com";
    $url_text = "Dr.Web site";

    $logo = "path_to_logo";
    $logo_url = "www.drweb.com";
    $logo_text = "Dr. Web Logo";

    $station = DWAVDesk::Station->new($handle);
    $station->get("test_av");
    $station->send_message($message, $url_text, $url, $logo , $logo_url, $logo_text);

=cut

bool
send_message(self, message, url_text="", url="", logo="", logo_url="", logo_text="")
  dwavd::station self
  const char     *message
  const char     *url_text
  const char     *url
  const char     *logo
  const char     *logo_url
  const char     *logo_text
CODE:
  dwavdapi_message *mes = dwavdapi_message_init();

  if (!mes)
    croak("Unable to send message because of memory allocation error.");

  RETVAL = dwavdapi_message_set_url(mes, url)                                  == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_url_text(mes, url_text)                        == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_msg(mes, message)                              == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_logo_url(mes, logo_url)                        == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_logo_text(mes, logo_text)                      == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_logo(mes, logo)                                == DWAVDAPI_SUCCESS
        && dwavdapi_station_send_message(self->handle, self->station->id, mes) == DWAVDAPI_SUCCESS;

  dwavdapi_message_destroy(mes);
OUTPUT:
  RETVAL


=head3 statistics()

Returns array with station statistics.

Args:

    from - From filter timestamp or 0 to get data since 1970
    till - Till filter timestamp. 0 to get data till current day
    virtop - Number of top viruses to return

Retured array keys:

    scans - see 'Scans statistics'
    infections - see 'Infections statistics'
    viruses - see 'Virus statistics'

Should be used with station object initialized by new().

=cut

SV *
statistics(self, from, till, virtop)
  dwavd::station self
  unsigned int   from
  unsigned int   till
  unsigned int   virtop
INIT:
  dwavdapi_station_statistics *tmp     = NULL;
  HV                          *results = NULL;
CODE:
  if (dwavdapi_station_get_statistics(self->handle, &tmp, self->station->id, from, till, virtop) == DWAVDAPI_SUCCESS && tmp) {
    results = (HV *)sv_2mortal((SV *)newHV());

    /* Scan statistics */

    dwavdapi_statistics_scans scans_lst = dwavdapi_station_statistics_scans(tmp);
    HV                       *scans     = (HV *)sv_2mortal((SV *)newHV());

    double scans_size = scans_lst.size;
    hv_store(scans, "size", sizeof("size") - 1, newSVnv(scans_size), 0);

    double scans_files = scans_lst.files;
    hv_store(scans, "files", sizeof("files") - 1, newSVnv(scans_files), 0);

    unsigned long scans_infected = scans_lst.infected;
    hv_store(scans, "infected", sizeof("infected") - 1, newSVuv(scans_infected), 0);

    unsigned long scans_deleted = scans_lst.deleted;
    hv_store(scans, "deleted", sizeof("deleted") - 1, newSVuv(scans_deleted), 0);

    unsigned long scans_moved = scans_lst.moved;
    hv_store(scans, "moved", sizeof("moved") - 1, newSVuv(scans_moved), 0);

    unsigned long scans_cured = scans_lst.cured;
    hv_store(scans, "cured", sizeof("cured") - 1, newSVuv(scans_cured), 0);

    unsigned long scans_errors = scans_lst.errors;
    hv_store(scans, "errors", sizeof("errors") - 1, newSVuv(scans_errors), 0);

    unsigned long scans_renamed = scans_lst.renamed;
    hv_store(scans, "renamed", sizeof("renamed") - 1, newSVuv(scans_renamed), 0);

    unsigned long scans_locked = scans_lst.locked;
    hv_store(scans, "locked", sizeof("locked") - 1, newSVuv(scans_locked), 0);

    hv_store(results, "scans", sizeof("scans") - 1, newRV((SV *)scans), 0);

    /* Infections */

    dwavdapi_statistics_infections infections_lst = dwavdapi_station_statistics_infections(tmp);
    HV                            *infections     = (HV *)sv_2mortal((SV *)newHV());

    unsigned long infections_deleted = infections_lst.deleted;
    hv_store(infections, "deleted", sizeof("deleted") - 1, newSVuv(infections_deleted), 0);

    unsigned long infections_cured = infections_lst.cured;
    hv_store(infections, "cured", sizeof("cured") - 1, newSVuv(infections_cured), 0);

    unsigned long infections_incurable = infections_lst.incurable;
    hv_store(infections, "incurable", sizeof("incurable") - 1, newSVuv(infections_incurable), 0);

    unsigned long infections_moved = infections_lst.moved;
    hv_store(infections, "moved", sizeof("moved") - 1, newSVuv(infections_moved), 0);

    unsigned long infections_locked = infections_lst.locked;
    hv_store(infections, "locked", sizeof("locked") - 1, newSVuv(infections_locked), 0);

    unsigned long infections_renamed = infections_lst.renamed;
    hv_store(infections, "renamed", sizeof("renamed") - 1, newSVuv(infections_renamed), 0);

    unsigned long infections_errors = infections_lst.errors;
    hv_store(infections, "errors", sizeof("errors") - 1, newSVuv(infections_errors), 0);

    unsigned long infections_ignored = infections_lst.ignored;
    hv_store(infections, "ignored", sizeof("ignored") - 1, newSVuv(infections_ignored), 0);

    unsigned long infections_total = infections_lst.total;
    hv_store(infections, "total", sizeof("total") - 1, newSVuv(infections_total), 0);

    hv_store(results, "infections", sizeof("infections") - 1, newRV((SV *)infections), 0);

    /* Infected objects */

    dwavdapi_list            *objects = NULL;
    dwavdapi_infected_object *object  = NULL;

    dwavdapi_list  *viruses = dwavdapi_station_statistics_viruses_list(tmp);
    dwavdapi_virus *virus   = NULL;

    AV *viruses_arr = (AV *)sv_2mortal((SV *)newAV());
    HV *virus_hash  = NULL;

    AV *objects_arr = NULL;
    HV *object_hash = NULL;

    if (viruses) {
      do {
        virus_hash = (HV *)sv_2mortal((SV *)newHV());
        virus      = (dwavdapi_virus *)dwavdapi_list_current_data(viruses);

        unsigned    objects_count = dwavdapi_virus_infected_objects_count(virus);
        const char *virus_name    = dwavdapi_virus_name(virus);

        hv_store(virus_hash, "objects_count", sizeof("objects_count") - 1, newSVuv(objects_count), 0);
        hv_store(virus_hash, "name", sizeof("name") - 1, newSVpv(virus_name, strlen(virus_name)), 0);

        objects     = dwavdapi_virus_infected_objects_list(virus);
        objects_arr = (AV *)sv_2mortal((SV *)newAV());

        char *str;

        do {
          object = (dwavdapi_infected_object *)dwavdapi_list_current_data(objects);

          if (object) {
            object_hash = (HV *)sv_2mortal((SV *)newHV());

            str = object->path;
            if (str)
              hv_store(object_hash, "path", sizeof("path") - 1, newSVpv(str, strlen(str)), 0);

            str = object->owner;
            if (str)
              hv_store(object_hash, "owner", sizeof("owner") - 1, newSVpv(str, strlen(str)), 0);

            str = object->username;
            if (str)
              hv_store(object_hash, "username", sizeof("username") - 1, newSVpv(str, strlen(str)), 0);

            str = object->station_uuid;
            if (str)
              hv_store(object_hash, "station_uuid", sizeof("station_uuid") - 1, newSVpv(str, strlen(str)), 0);

            hv_store(object_hash, "originator", sizeof("originator") - 1, newSVuv(object->originator), 0);
            hv_store(object_hash, "treatment", sizeof("treatment") - 1, newSVuv(object->treatment), 0);
            hv_store(object_hash, "type", sizeof("type") - 1, newSVuv(object->type), 0);
            hv_store(object_hash, "infection_type", sizeof("infection_type") - 1, newSVuv(object->infection_type), 0);

            av_push(objects_arr, newRV((SV *)object_hash));
          }
        } while(dwavdapi_list_next(objects) != DWAVDAPI_FAILURE);

        hv_store(virus_hash, "infected_objects", sizeof("infected_objects") - 1, newRV((SV *)objects_arr), 0);
        av_push(viruses_arr, newRV((SV *)virus_hash));
      } while(dwavdapi_list_next(viruses) != DWAVDAPI_FAILURE); 
    }

    hv_store(results, "viruses", sizeof("viruses") - 1, newRV((SV *)viruses_arr), 0);
    RETVAL = newRV((SV *)results);

    dwavdapi_station_statistics_destroy(tmp);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL

# ============================================================================ #

=head1 Group - DWAVDesk::Group

DWAVDesk::Group - module contains functions to manipulate AV-Desk server stations.

Usage example:

	use DWAVDesk;

	$handle = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");

	if($handle == NULL) {
	  $error = DWAVDesk::Utils::get_error();
	  print "Error: ".$error->{"string"}."\n";
	  exit;
	}

	# Group initialization.
	$group = DWAVDesk::Group->new($handle);
	$group->set_name("PerlTestGroup");
	$group->set_parent_id("test_grp");

	# Group creation.
	if (!$group->create()) {
	  $error = DWAVDesk::Utils::get_error($handle);
	  print "Error: ".$error->{"string"}."\n";
	  print "Server error: ".$error->{"srvstring"}."\n";
	} else {
	  print "ID: ".$group->id()."\n";
	  print "Name: ".$group->name()."\n";
	  print "Parent ID: ".$group->parent_id()."\n";

	  # Group modification.
	  $group->set_description("Test group");
	  if (!$group->update()) {
	    $error = DWAVDesk::Utils::get_error($handle);
	    print "Error: ".$error->{"string"}."\n";
	    print "Server error: ".$error->{"srvstring"}."\n";
	  }

	  print "Description: ".$group->description()."\n";

	  # Group removal.
	  $group->delete();
	}

=cut


MODULE = DWAVDesk      PACKAGE = DWAVDesk::Group

# ============== #


=head2 Common

=cut


=head3 new()

Initializes new group object.

Args:

    handle - DWAVDesk::Server connection resource

Returns: initialized group object.

=cut

dwavd::group
new(CLASS, handle)
  char *CLASS
  dwavd::server handle
INIT:
  dwavd_group *group = NULL;
CODE:
  if (!handle)
    croak("Unable to initialize group object because of server connection handle is NULL.");

  Newx(group, (int)sizeof(dwavd_group), dwavd_group);

  if (group && (group->group  = dwavdapi_group_init())) {
    group->handle = handle;
  }
  else {
    Safefree(group);
    croak("Unable to initialize group object because of memory allocation error.");
  }

  RETVAL = group;
OUTPUT:
  RETVAL

=head3 get()

Retrieves existing group information.

Should be used with group object initialized by new().

Args:

    id - Existing group ID

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
get(self, id)
  dwavd::group self
  const char  *id
CODE:
  dwavdapi_group_destroy(self->group);
  RETVAL = !dwavdapi_group_get_info(self->handle, &self->group, id);
OUTPUT:
  RETVAL

=head3 create()

Creates new group on AV-Desk server.

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
create(self)
  dwavd::group self
INIT:
  char *id = NULL;
CODE:
  if (dwavdapi_group_add(self->handle, self->group, &id) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_group_get_info(self->handle, &self->group, id);
    dwavdapi_strfree(&id);
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL

=head3 update()

Updates group information on AV-Desk server.

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
update(self)
  dwavd::group self
CODE:
  if (dwavdapi_group_change(self->handle, self->group) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_group_get_info(self->handle, &self->group, dwavdapi_group_id(self->group));
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL

=head3 delete()

Deletes an group from AV-Desk server.

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool 
delete(self)
  dwavd::group self
CODE:
  RETVAL = !dwavdapi_group_delete(self->handle, dwavdapi_group_id(self->group));
OUTPUT:
  RETVAL

void
DESTROY(self)
  dwavd::group self
CODE:
  dwavdapi_group_destroy(self->group);
  Safefree(self);

=head3 created_time()

Returns creation timestamp for group.

Should be used with group object initialized by new().

=cut

time_t
created_time(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_created_time(self->group);
OUTPUT:
  RETVAL


=head3 modified_time()

Returns last modified timestamp for group.

Should be used with group object initialized by new().

=cut

time_t
modified_time(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_modified_time(self->group);
OUTPUT:
  RETVAL

=head3 set_id()

Sets group identifier.

Args: 

    id - Identifier

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_id(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_id(self->group, val);
OUTPUT:
  RETVAL

=head3 id()

Returns group identifier.

Should be used with group object initialized by new().

=cut

char *
id(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_id(self->group);
OUTPUT:
  RETVAL

=head3 set_name()

Sets group name.

Args:

    name - Name

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_name(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_name(self->group, val);
OUTPUT:
  RETVAL

=head3 name()

Returns group name.

Should be used with group object initialized by new().

=cut

char *
name(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_name(self->group);
OUTPUT:
  RETVAL


=head3 set_description()

Sets group description.

Args:

    description - Description

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_description(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_description(self->group, val);
OUTPUT:
  RETVAL


=head3 description()

Returns group description.

Should be used with group object initialized by new().

=cut

char *
description(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_description(self->group);
OUTPUT:
  RETVAL

# ============== #


=head2 Groupings

=cut


=head3 set_parent_id()

Sets group parent group by ID.

Args: 

    value - Parent group ID

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_parent_id(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_parent_id(self->group, val);
OUTPUT:
  RETVAL

=head3 parent_id()

Returns group parent (main) group identifier.

Should be used with group object initialized by new().

=cut

char *
parent_id(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_parent_id(self->group);
OUTPUT:
  RETVAL

=head3 child_groups_count()

Returns count of groups group belongs to.

Should be used with group object initialized by new().

=cut

unsigned
child_groups_count(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_child_groups_count(self->group);
OUTPUT:
  RETVAL

=head3 child_groups()

Returns an array of identifiers of groups group belongs to.

Should be used with group object initialized by new().

Example:

    $group = DWAVDesk::Group->new($handle);
    $group->get("SomeGroupID");
    $child_groups = $group->child_groups();
    foreach(@$child_groups){
        print $_."\n";
    }

=cut

SV* 
child_groups(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned groups_count = dwavdapi_group_child_groups_count(self->group);
  char         **child_groups = dwavdapi_group_child_groups_array(self->group);
  const char    *group        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < groups_count; i++) {
    group = *(child_groups + i);
    av_push(result, newSVpv(group, strlen(group)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

# ============== #


=head2 E-mails

=cut


=head3 emails_count()

Returns count of e-mails associated with group.

Should be used with group object initialized by new().

=cut

unsigned
emails_count(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_emails_count(self->group);
OUTPUT:
  RETVAL

=head3 emails()

Returns an array of e-mails associated with group.

Should be used with group object initialized by new().

Example:

    $group = DWAVDesk::Group->new($handle);
    $group->get("SomeID");
    $emails = $group->emails();
    foreach(@$emails){
        print $_."\n";  
    }

=cut

SV* 
emails(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned emails_count = dwavdapi_group_emails_count(self->group);
  char         **emails       = dwavdapi_group_emails_array(self->group);
  const char    *email        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < emails_count; i++) {
    email = *(emails + i);
    av_push(result, newSVpv(email, strlen(email)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 add_email()

Adds group email.

Args:

    value - E-mail to add

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

Example:

    $group = DWAVDesk::Group->new($handle);
    $group->set_id("SomeID");
    $group->add_email("some\@mail.com");
    $group->delete_email("another\@mail.com");
    $group->update();

See also: delete_email()

=cut

bool
add_email(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_add_email(self->group, val);
OUTPUT:
  RETVAL

=head3 delete_email()

Removes group from group.

Args:

    value - E-mail to delete

Should be used with group object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

See also: add_email()

=cut

bool
delete_email(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_delete_email(self->group, val);
OUTPUT:
  RETVAL

# ============== #


=head2 Group types

=cut


=head3 type()

Returns internal group type identifier.

Should be used with administrator object initialized by new().

=cut

short
type(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_type(self->group);
OUTPUT:
  RETVAL

=head3 is_custom()

Returns 1 if group is created by user, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_custom(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_is_custom(self->group);
OUTPUT:
  RETVAL

=head3 is_tariff()

Returns 1 if group is a tariff group, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_tariff(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_is_tariff(self->group);
OUTPUT:
  RETVAL

=head3 is_transport()

Returns 1 if group is a meta transport (protocol) group, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_transport(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_is_transport(self->group);
OUTPUT:
  RETVAL

=head3 is_custom()

Returns 1 if group is a meta status group, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_status(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_is_status(self->group);
OUTPUT:
  RETVAL

=head3 is_virtual()

Returns 1 if group is a meta (virtual) group, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_virtual(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_is_virtual(self->group);
OUTPUT:
  RETVAL

=head3 is_system()

Returns 1 if group is a system group, not created by user, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_system(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_is_system(self->group);
OUTPUT:
  RETVAL

=head3 is_platform()

Returns 1 if group is a meta platform (OS) group, otherwise - 0.

Should be used with administrator object initialized by new().

=cut

bool
is_platform(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_is_platform(self->group);
OUTPUT:
  RETVAL

# ============== #


=head2 Other

=cut


=head3 admins()

Returns an array of identifiers of group administrators.

Should be used with group object initialized by new().

Example:

    $group = DWAVDesk::Group->new($handle);
    $group->get("SomeGroupID");
    $admins = $group->admins();
    foreach(@$admins){
        print $_."\n";
    }

=cut

SV *
admins(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned admins_count = dwavdapi_group_admins_count(self->group);
  char         **admins       = dwavdapi_group_admins_array(self->group);
  const char    *admin        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < dwavdapi_group_admins_count(self->group); i++) {
    admin = *(admins + i);
    av_push(result, newSVpv(admin, strlen(admin)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 stations_count()

Returns count of stations in group.

Should be used with group object initialized by new().

=cut

unsigned
stations_count(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_stations_count(self->group);
OUTPUT:
  RETVAL


=head3 stations()

Returns an array of identifiers of stations in group.

Should be used with group object initialized by new().

Example:

    $group = DWAVDesk::Group->new($handle);
    $group->get("SomeGroupID");
    $stations = $group->stations();
    foreach(@$stations){
        print $_."\n";
    }

=cut

SV* 
stations(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned stations_count = dwavdapi_group_stations_count(self->group);
  char         **stations       = dwavdapi_group_stations_array(self->group);
  const char    *station        = NULL;
  AV            *result         = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < stations_count; i++) {
    station = *(stations + i);
    av_push(result, newSVpv(station, strlen(station)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 rights()

Returns array with group rights data.

Rights data is represented as array with keys:

    code - Right ID
    value - Right value
    inherited_group_id - Group ID right is inherited from

Should be used with group object initialized by new().

Example:

    $rights = $group->rights();
    foreach(@$rights){
        print "code: " . DWAVDesk::Utils::app_name($_->{"code"}) . "\n";
    }

=cut

SV *
rights(self)
  dwavd::group self
INIT:
  dwavdapi_list  *lst     = dwavdapi_group_rights_list(self->group);
  dwavdapi_right *group   = NULL;
  HV             *rh      = NULL;
  AV             *results = (AV *)sv_2mortal((SV *)newAV());
  unsigned        code;
  const char     *inherited_group_id;
CODE:
  if (lst) {
    do {
      group = (dwavdapi_right *)dwavdapi_list_current_data(lst);
      rh    = (HV *)sv_2mortal((SV *)newHV());

      code = group->code;
      hv_store(rh, "code", sizeof("code") - 1, newSVuv(code), 0);

      inherited_group_id = group->inherited_group_id;
      if (inherited_group_id)
        hv_store(rh, 
                 "inherited_group_id", 
                 sizeof("inherited_group_id") - 1, 
                 newSVpv(inherited_group_id, 
                 strlen(inherited_group_id)), 
                 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL

=head3 key()

Returns array with group key data.

Key data is represented as array with keys:

    key - Key
    inherited_group_id - Group ID key is inherited from

Should be used with group object initialized by new().

Example:

    $group = DWAVDesk::Group->new($handle);
    $group->get("SomeID");

    $key = $group->key();
    print $key->{"key"}."\n";  
    print $key->{"inherited_group_id"}."\n"; 

=cut

SV*
key(self)
  dwavd::group self
INIT:
  HV           *rh  = (HV *)sv_2mortal((SV *)newHV());
  dwavdapi_key *key = dwavdapi_group_key(self->group);
  const char   *inherited_group_id;
  const char   *ckey;
CODE:
  inherited_group_id = key->inherited_group_id;
  if (inherited_group_id)
    hv_store(rh,
             "inherited_group_id",
             sizeof("inherited_group_id") - 1,
             newSVpv(inherited_group_id, strlen(inherited_group_id)),
             0);

  ckey = key->key;
  if (ckey)
    hv_store(rh, "key", sizeof("key") - 1, newSVpv(ckey, strlen(ckey)), 0);

  RETVAL = newRV((SV *)rh);
OUTPUT:
  RETVAL

=head3 send_message()

Sends a message to station using agent.

Args:

    message - Message text which can contain {link} macros to place link given in link parameters to
    url_text - URL description text to be placed in {link} macros
    url - URL to be placed in {link} macros
    logo - Absolute path to a logo .bmp file to show in message
    logo_url - URL to go to on a logo click
    logo_text - Description text for a logo

Should be used with group object initialized by new().

Example:

    $message = "Please visit {link}.";
    $url = "www.drweb.com";
    $url_text = "Dr.Web site";

    $logo = "path_to_logo";
    $logo_url = "www.drweb.com";
    $logo_text = "Dr. Web Logo";

    $group = DWAVDesk::Group->new($handle);
    $group->get("SomeID");
    $group->send_message($message, $url_text, $url, $logo , $logo_url, $logo_text);

=cut

bool
send_message(self, message, url_text="", url="", logo="", logo_url="", logo_text="")
  dwavd::group self
  const char  *message
  const char  *url_text
  const char  *url
  const char  *logo
  const char  *logo_url
  const char  *logo_text
CODE:
  dwavdapi_message *mes = dwavdapi_message_init();

  if (!mes)
    croak("Unable to send group message because of memory allocation error.");

  RETVAL = dwavdapi_message_set_url(mes, url)                              == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_url_text(mes, url_text)                    == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_msg(mes, message)                          == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_logo_url(mes, logo_url)                    == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_logo_text(mes, logo_text)                  == DWAVDAPI_SUCCESS
        && dwavdapi_message_set_logo(mes, logo)                            == DWAVDAPI_SUCCESS
        && dwavdapi_group_send_message(self->handle, self->group->id, mes) == DWAVDAPI_SUCCESS;

  dwavdapi_message_destroy(mes);
OUTPUT:
  RETVAL

=head3 statistics()

Returns array with group statistics.

Args:

    from - From filter timestamp or 0 to get data since 1970
    till - Till filter timestamp. 0 to get data till current day
    virtop - Number of top viruses to return

Retured array keys:

    scans - see 'Scans statistics'
    state - see 'Station states statistics'
    infections - see 'Infections statistics'
    viruses - see 'Virus statistics'
    stations_total - Totoal number of stations in group

Should be used with group object initialized by new().

=cut

SV *
statistics(self, from, till, virtop)
  dwavd::group self
  unsigned int from
  unsigned int till
  unsigned int virtop
INIT:
  dwavdapi_group_statistics *tmp     = NULL;
  HV                        *results = NULL;
CODE:
  if (dwavdapi_group_get_statistics(self->handle, &tmp, self->group->id, from, till, virtop) == DWAVDAPI_SUCCESS && tmp) {
    results = (HV *)sv_2mortal((SV *)newHV());

    /* Scan stats */

    HV                       *scans     = (HV *)sv_2mortal((SV *)newHV());
    dwavdapi_statistics_scans scans_lst = dwavdapi_group_statistics_scans(tmp);

    double scans_size = scans_lst.size;
    hv_store(scans, "size", sizeof("size") - 1, newSVnv(scans_size), 0);

    double scans_files = scans_lst.files;
    hv_store(scans, "files", sizeof("files") - 1, newSVnv(scans_files), 0);

    unsigned long scans_infected = scans_lst.infected;
    hv_store(scans, "infected", sizeof("infected") - 1, newSVuv(scans_infected), 0);

    unsigned long scans_deleted = scans_lst.deleted;
    hv_store(scans, "deleted", sizeof("deleted") - 1, newSVuv(scans_deleted), 0);

    unsigned long scans_moved = scans_lst.moved;
    hv_store(scans, "moved", sizeof("moved") - 1, newSVuv(scans_moved), 0);

    unsigned long scans_cured = scans_lst.cured;
    hv_store(scans, "cured", sizeof("cured") - 1, newSVuv(scans_cured), 0);

    unsigned long scans_errors = scans_lst.errors;
    hv_store(scans, "errors", sizeof("errors") - 1, newSVuv(scans_errors), 0);

    unsigned long scans_renamed = scans_lst.renamed;
    hv_store(scans, "renamed", sizeof("renamed") - 1, newSVuv(scans_renamed), 0);

    unsigned long scans_locked = scans_lst.locked;
    hv_store(scans, "locked", sizeof("locked") - 1, newSVuv(scans_locked), 0);

    hv_store(results, "scans", sizeof("scans") - 1, newRV((SV *)scans), 0);

    /* Stations states */

    HV                                *state     = (HV *)sv_2mortal((SV *)newHV());
    dwavdapi_statistics_stations_state state_lst = dwavdapi_group_statistics_stations_state(tmp);

    unsigned long state_online = state_lst.online;
    hv_store(state, "infected", sizeof("infected") - 1, newSVuv(state_online), 0);

    unsigned long state_deinstalled = state_lst.deinstalled;
    hv_store(state, "deinstalled", sizeof("deinstalled") - 1, newSVuv(state_deinstalled), 0);

    unsigned long state_blocked = state_lst.blocked;
    hv_store(state, "blocked", sizeof("blocked") - 1, newSVuv(state_blocked), 0);

    unsigned long state_expired = state_lst.expired;
    hv_store(state, "expired", sizeof("expired") - 1, newSVuv(state_expired), 0);

    unsigned long state_offline = state_lst.offline;
    hv_store(state, "offline", sizeof("offline") - 1, newSVuv(state_offline), 0);

    unsigned long state_activated = state_lst.activated;
    hv_store(state, "activated", sizeof("activated") - 1, newSVuv(state_activated), 0);

    unsigned long state_unactivated = state_lst.unactivated;
    hv_store(state, "unactivated", sizeof("unactivated") - 1, newSVuv(state_unactivated), 0);

    unsigned long state_total = state_lst.total;
    hv_store(state, "total", sizeof("total") - 1, newSVuv(state_total), 0);

    hv_store(results, "state", sizeof("state") - 1, newRV((SV *)state), 0);

    /* Infections */

    HV                            *infections     = (HV *)sv_2mortal((SV *)newHV());
    dwavdapi_statistics_infections infections_lst = dwavdapi_group_statistics_infections(tmp);

    unsigned long infections_deleted = infections_lst.deleted;
    hv_store(infections, "deleted", sizeof("deleted") - 1, newSVuv(infections_deleted), 0);

    unsigned long infections_cured = infections_lst.cured;
    hv_store(infections, "cured", sizeof("cured") - 1, newSVuv(infections_cured), 0);

    unsigned long infections_incurable = infections_lst.incurable;
    hv_store(infections, "incurable", sizeof("incurable") - 1, newSVuv(infections_incurable), 0);

    unsigned long infections_moved = infections_lst.moved;
    hv_store(infections, "moved", sizeof("moved") - 1, newSVuv(infections_moved), 0);

    unsigned long infections_locked = infections_lst.locked;
    hv_store(infections, "locked", sizeof("locked") - 1, newSVuv(infections_locked), 0);

    unsigned long infections_renamed = infections_lst.renamed;
    hv_store(infections, "renamed", sizeof("renamed") - 1, newSVuv(infections_renamed), 0);

    unsigned long infections_errors = infections_lst.errors;
    hv_store(infections, "errors", sizeof("errors") - 1, newSVuv(infections_errors), 0);

    unsigned long infections_ignored = infections_lst.ignored;
    hv_store(infections, "ignored", sizeof("ignored") - 1, newSVuv(infections_ignored), 0);

    unsigned long infections_total = infections_lst.total;
    hv_store(infections, "total", sizeof("total") - 1, newSVuv(infections_total), 0);

    hv_store(results, "infections", sizeof("infections") - 1, newRV((SV *)infections), 0);

    /* Viruses */

    dwavdapi_list            *objects;
    dwavdapi_infected_object *object;
    dwavdapi_list            *viruses = dwavdapi_group_statistics_viruses_list(tmp);
    dwavdapi_virus           *virus;

    AV *viruses_arr = (AV *)sv_2mortal((SV *)newAV());
    HV *virus_hash;

    AV *objects_arr;
    HV *object_hash;

    if (viruses) {
      do {
        virus_hash = (HV *)sv_2mortal((SV *)newHV());
        virus      = (dwavdapi_virus *)dwavdapi_list_current_data(viruses);

        unsigned objects_count = dwavdapi_virus_infected_objects_count(virus);
        const char *virus_name = dwavdapi_virus_name(virus);

        hv_store(virus_hash, "objects_count", sizeof("objects_count") - 1, newSVuv(objects_count), 0);
        hv_store(virus_hash, "name", sizeof("name") - 1, newSVpv(virus_name, strlen(virus_name)), 0);

        objects     = dwavdapi_virus_infected_objects_list(virus);
        objects_arr = (AV *)sv_2mortal((SV *)newAV());

        char *str;

        do {
          object = (dwavdapi_infected_object *)dwavdapi_list_current_data(objects);

          if (object) {
            object_hash = (HV *)sv_2mortal((SV *)newHV());

            str = object->path;
            if(str)
              hv_store(object_hash, "path", sizeof("path") - 1, newSVpv(str, strlen(str)), 0);

            str = object->owner;
            if(str)
              hv_store(object_hash, "owner", sizeof("owner") - 1, newSVpv(str, strlen(str)), 0);

            str = object->username;
            if(str)
              hv_store(object_hash, "username", sizeof("username") - 1, newSVpv(str, strlen(str)), 0);

            str = object->station_uuid;
            if(str)
              hv_store(object_hash, "station_uuid", sizeof("station_uuid") - 1, newSVpv(str, strlen(str)), 0);

            hv_store(object_hash, "originator", sizeof("originator") - 1, newSVuv(object->originator), 0);
            hv_store(object_hash, "treatment", sizeof("treatment") - 1, newSVuv(object->treatment), 0);
            hv_store(object_hash, "type", sizeof("type") - 1, newSVuv(object->type), 0);
            hv_store(object_hash, "infection_type", sizeof("infection_type") - 1, newSVuv(object->infection_type), 0);

            av_push(objects_arr, newRV((SV *)object_hash));
          }
        } while(dwavdapi_list_next(objects) != DWAVDAPI_FAILURE);

        hv_store(virus_hash, "infected_objects", sizeof("infected_objects") - 1, newRV((SV *)objects_arr), 0);
        av_push(viruses_arr, newRV((SV *)virus_hash));
      } while(dwavdapi_list_next(viruses) != DWAVDAPI_FAILURE);
    }

    hv_store(results, "viruses", sizeof("viruses") - 1, newRV((SV *)viruses_arr), 0);
    hv_store(results, "stations_total", sizeof("stations_total") - 1, newSVuv(dwavdapi_group_statistics_stations_total(tmp)), 0);
    RETVAL = newRV((SV *)results);

    dwavdapi_group_statistics_destroy(tmp);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL

# ============================================================================ #


=head1 Tariff - DWAVDesk::Tariff

DWAVDesk::Tariff - module contains functions to manipulate AV-Desk server tariffs.

Usage example:

  use DWAVDesk;

  $handle = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");

  if($handle == NULL) {
    $error = DWAVDesk::Utils::get_error();
    print "Error: ".$error->{"string"}."\n";
    exit;
  }

  # Tariff initialization.
  $tariff = DWAVDesk::Tariff->new($handle);

  if (!$tariff->get(DWAVDesk::TARIFF_ID_J_CLASSIC)) {
    $error = DWAVDesk::Utils::get_error($handle);
    print "Error: ".$error->{"string"}."\n";
    print "Server error: ".$error->{"srvstring"}."\n";
  }

  print "ID: ".$tariff->id()."\n";
  print "Name: ".$tariff->name()."\n";
  print "Grace period: ".$tariff->grace_period()."\n";

  # Tariff creation.
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

    # Tariff modification.
    $tariff->set_grace_period(15);
    if (!$tariff->update()) {
      $error = DWAVDesk::Utils::get_error($handle);
      print "Error: ".$error->{"string"}."\n";
      print "Server error: ".$error->{"srvstring"}."\n";
    }

    print "Grace period: ".$tariff->grace_period()."\n";

    # Tariff removal.
    $tariff->delete(DWAVDesk::TARIFF_ID_J_CLASSIC);
  }

=cut

MODULE = DWAVDesk      PACKAGE = DWAVDesk::Tariff

# ============== #


=head2 Common

=cut


=head3 new()

Initializes new tariff object.

Args:

    handle - DWAVDesk::Server connection resource

Returns: initialized tariff object.

=cut

dwavd::tariff
new(CLASS, handle)
  char *CLASS
  dwavd::server handle
INIT:
  dwavd_tariff *tariff = NULL;
CODE:
  if (!handle)
    croak("Unable to initialize tariff object because of server connection is NULL.");

  Newx(tariff, (int)sizeof(dwavd_tariff), dwavd_tariff);

  if (tariff && (tariff->tariff = dwavdapi_group_init())) {
    tariff->handle = handle;
  }
  else {
    Safefree(tariff);
    croak("Unable to initialize tariff object because of memory allocation error.");
  }
  RETVAL = tariff;
OUTPUT:
  RETVAL

=head3 get()

Retrieves existing tariff information.

Should be used with tariff object initialized by new().

Args:

    id - Existing tariff ID

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
get(self, id)
  dwavd::tariff self
  const char   *id
CODE:
  dwavdapi_group_destroy(self->tariff);
  RETVAL = !dwavdapi_tariff_get_info(self->handle, &self->tariff, id);
OUTPUT:
  RETVAL

=head3 create()

Creates new tariff on AV-Desk server.

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
create(self)
  dwavd::tariff self
INIT:
  char *id = NULL;
CODE:
  if (dwavdapi_tariff_add(self->handle, self->tariff, &id) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_tariff_get_info(self->handle, &self->tariff, id);
    dwavdapi_strfree(&id);
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL


=head3 update()

Updates tariff information on AV-Desk server.

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
update(self)
  dwavd::tariff self
CODE:
  if (dwavdapi_tariff_change(self->handle, self->tariff) == DWAVDAPI_SUCCESS) {
    RETVAL = !dwavdapi_tariff_get_info(self->handle, &self->tariff, dwavdapi_group_id(self->tariff));
  }
  else {
    RETVAL = 0;
  }
OUTPUT:
  RETVAL

=head3 delete()

Deletes an tariff from AV-Desk server.

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
delete(self, tid)
  dwavd::tariff self
  const char   *tid
CODE:
  RETVAL = !dwavdapi_tariff_delete(self->handle, dwavdapi_group_id(self->tariff), tid);
OUTPUT:
  RETVAL

void
DESTROY(self)
  dwavd::tariff self
CODE:
  dwavdapi_group_destroy(self->tariff);
  Safefree(self);


=head3 created_time()

Returns creation timestamp for tariff.

Should be used with tariff object initialized by new().

=cut

time_t
created_time(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_created_time(self->group);
OUTPUT:
  RETVAL

=head3 modified_time()

Returns last modified timestamp for tariff.

Should be used with tariff object initialized by new().

=cut

time_t
modified_time(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_modified_time(self->group);
OUTPUT:
  RETVAL


=head3 set_id()

Sets tariff identifier.

Args:

    id - Identifier

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_id(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_id(self->group, val);
OUTPUT:
  RETVAL

=head3 id()

Returns tariff identifier.

Should be used with tariff object initialized by new().

=cut

char *
id(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_id(self->group);
OUTPUT:
  RETVAL


=head3 set_name()

Sets tariff name.

Args: 

    name - Name

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_name(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_name(self->group, val);
OUTPUT:
  RETVAL


=head3 name()

Returns tariff name.

Should be used with tariff object initialized by new().

=cut

char *
name(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_name(self->group);
OUTPUT:
  RETVAL


=head3 set_description()

Sets tariff description.

Args:

    description - Description

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_description(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_description(self->group, val);
OUTPUT:
  RETVAL


=head3 description()

Returns tariff description.

Should be used with tariff object initialized by new().

=cut

char *
description(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_description(self->group);
OUTPUT:
  RETVAL


# ============== # 


=head2 Groupings

=cut


=head3 set_parent_id()

Sets tariff parent group by ID.

Args:

    value - Parent group ID

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_parent_id(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_set_parent_id(self->group, val);
OUTPUT:
  RETVAL


=head3 parent_id()

Returns tariff parent (main) group identifier.

Should be used with tariff object initialized by new().

=cut

char *
parent_id(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_parent_id(self->group);
OUTPUT:
  RETVAL

=head3 child_groups_count()

Returns count of tariff group belongs to.

Should be used with tariff object initialized by new().

=cut

unsigned
child_groups_count(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_child_groups_count(self->group);
OUTPUT:
  RETVAL


=head3 child_groups()

Returns an array of identifiers of tariffs group belongs to.

Should be used with tariff object initialized by new().

Example:

    $tariff = DWAVDesk::Tariff->new($handle);
    $tariff->get("SomeTariffID");
    $child_groups = $tariff->child_groups();
    foreach(@$child_groups){
        print $_."\n";
    }

=cut

SV* 
child_groups(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned groups_count = dwavdapi_group_child_groups_count(self->group);
  char         **child_groups = dwavdapi_group_child_groups_array(self->group);
  const char    *group        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < groups_count; i++) {
    group = *(child_groups + i);
    av_push(result, newSVpv(group, strlen(group)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

# ============== #


=head2 E-mails

=cut


=head3 emails_count()

Returns count of e-mails associated with tariff.

Should be used with tariff object initialized by new().

=cut

unsigned
emails_count(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_emails_count(self->group);
OUTPUT:
  RETVAL


=head3 emails()

Returns an array of e-mails associated with tariff.

Should be used with tariff object initialized by new().

Example:

    $tariff = DWAVDesk::Tariff->new($handle);
    $tariff->get("SomeID");
    $emails = $tariff->emails();
    foreach(@$emails){
        print $_."\n";
    }

=cut

SV *
emails(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned emails_count = dwavdapi_group_emails_count(self->group);
  char         **emails       = dwavdapi_group_emails_array(self->group);
  const char    *email        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < emails_count; i++) {
    email = *(emails + i);
    av_push(result, newSVpv(email, strlen(email)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 add_email()

Adds tariff email.

Args:

    value - E-mail to add

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

Example:

    $tariff = DWAVDesk::Tariff->new($handle);
    $tariff->set_id("SomeID");
    $tariff->add_email("some\@mail.com");
    $tariff->delete_email("another\@mail.com");
    $tariff->update();

See also: delete_email()

=cut

bool
set_add_email(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_add_email(self->group, val);
OUTPUT:
  RETVAL

=head3 delete_email()

Removes tariff email.

Args: 

    value - E-mail to delete

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

See also: add_email()

=cut

bool
set_delete_email(self , val)
  dwavd::group self
  const char  *val
CODE:
  RETVAL = !dwavdapi_group_delete_email(self->group, val);
OUTPUT:
  RETVAL


# ============== #


=head2 Other

=cut


=head3 set_component()

Sets tariff component.

Args:

    component - Component code
    val - Component value

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

See also: Constants - Components

=cut

bool
set_component(self, component, val)
  dwavd::group               self
  dwavdapi_components_bit    component
  dwavdapi_components_values val
CODE:
  RETVAL = !dwavdapi_group_set_component(self->group, component, val);
OUTPUT:
  RETVAL

=head3 components()

Returns array with tariff components data.

Component data is represented as array with keys:

    code - Component ID
    value - Component state
    inherited_group_id - Group ID component is inherited from

Should be used with tariff object initialized by new().

Example:

    $tariff = DWAVDesk::Tariff->new($handle);
    $tariff->get(DWAVDesk::TARIFF_ID_J_CLASSIC);
    $components = $tariff->components();
    foreach(@$components){
        if($_->{"value"} == DWAVDesk::COMPONENT_REQUIRED) {
            print DWAVDesk::Utils::app_name($_->{"code"}) . "\n";
        }
    }

=cut

SV *
components(self)
dwavd::group self
INIT:
  dwavdapi_list      *lst     = dwavdapi_group_components_list(self->group);
  dwavdapi_component *group   = NULL;
  HV                 *rh      = NULL;
  AV                 *results = (AV *)sv_2mortal((SV *)newAV());
  unsigned            code;
  unsigned            val;
  const char         *inherited_group_id;
CODE:
  if (lst) {
    do {
      group = (dwavdapi_component *)dwavdapi_list_current_data(lst);
      rh    = (HV *)sv_2mortal((SV *)newHV());

      code = group->code;
      hv_store(rh, "code", sizeof("code") - 1, newSVuv(code), 0);

      val = group->value;
      hv_store(rh, "value", sizeof("value") - 1, newSVuv(val), 0);

      inherited_group_id = group->inherited_group_id;
      if (inherited_group_id)
        hv_store(rh,
                 "inherited_group_id",
                 sizeof("inherited_group_id") - 1,
                 newSVpv(inherited_group_id,
                 strlen(inherited_group_id)),
                 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL

=head3 admins()

Returns an array of identifiers of tariff group administrators.

Should be used with tariff group object initialized by new().

Example:

    $tariff = DWAVDesk::Tariff->new($handle);
    $tariff->get("SomeTariffID");
    $admins = $tariff->admins();
    foreach(@$admins){
        print $_."\n"; 
    }

=cut

SV* 
admins(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned admins_count = dwavdapi_group_admins_count(self->group);
  char         **admins       = dwavdapi_group_admins_array(self->group);
  const char    *admin        = NULL;
  AV            *result       = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < admins_count; i++) {
    admin = *(admins + i);
    av_push(result, newSVpv(admin, strlen(admin)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 admins_count()

Returns count of tariff group administrators.

Should be used with tariff group object initialized by new().

=cut

unsigned
admins_count(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_admins_count(self->group);
OUTPUT:
  RETVAL

=head3 stations()

Returns an array of identifiers of stations in tariff group.

Should be used with tariff group object initialized by new().

Example:

    $tariff = DWAVDesk::Tariff->new($handle);
    $tariff->get("SomeTariffID");
    $stations = $tariff->stations();
    foreach(@$stations){
        print $_."\n";  
    }

=cut

SV *
stations(self)
  dwavd::group self
INIT:
  unsigned       i;
  const unsigned stations_count = dwavdapi_group_stations_count(self->group);
  char         **stations       = dwavdapi_group_stations_array(self->group);
  const char    *station        = NULL;
  AV            *result         = (AV *)sv_2mortal((SV *)newAV());
CODE:
  for (i = 0; i < stations_count; i++) {
    station = *(stations + i);
    av_push(result, newSVpv(station, strlen(station)));
  }

  RETVAL = newRV((SV *)result);
OUTPUT:
  RETVAL

=head3 stations_count()

Returns count of stations in tariff group.

Should be used with tariff group object initialized by new().

=cut

unsigned
stations_count(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_stations_count(self->group);
OUTPUT:
  RETVAL

=head3 rights()

Returns array with tariff group rights data.

Rights data is represented as array with keys:

    code - Right ID
    value - Right value
    inherited_group_id - Group ID right is inherited from

Should be used with tariff group object initialized by new().

Example:

    $rights = $tariff->rights();
    foreach(@$rights){
        print "code: " . DWAVDesk::Utils::app_name($_->{"code"}) . "\n";
    }

=cut

SV *
rights(self)
  dwavd::group self
INIT:
  dwavdapi_list  *lst     = dwavdapi_group_rights_list(self->group);
  dwavdapi_right *group   = NULL;
  HV             *rh      = NULL;
  AV             *results = (AV *)sv_2mortal((SV *)newAV());
  unsigned        code;
  const char     *inherited_group_id;
CODE:
  if (lst) {
    do {
      group = (dwavdapi_right *)dwavdapi_list_current_data(lst);
      rh    = (HV *)sv_2mortal((SV *)newHV());

      code = group->code;
      hv_store(rh, "code", sizeof("code") - 1, newSVuv(code), 0);

      inherited_group_id = group->inherited_group_id;
      if(inherited_group_id)
        hv_store(rh, 
                 "inherited_group_id", 
                 sizeof("inherited_group_id") - 1, 
                 newSVpv(inherited_group_id, strlen(inherited_group_id)), 
                 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);
  }

  RETVAL = newRV((SV *)results);
OUTPUT:
  RETVAL


=head3 set_grace_period()

Sets tariff grace period in days.

Args:

    val - Grace period in days

Should be used with tariff object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_grace_period(self, val)
  dwavd::group self
  unsigned     val
CODE:
  RETVAL = !dwavdapi_group_set_grace_period(self->group, val);
OUTPUT:
  RETVAL


=head3 grace_period()

Returns tariff grace period in days.

Should be used with tariff object initialized by new().

=cut

int
grace_period(self)
  dwavd::group self
CODE:
  RETVAL = dwavdapi_group_grace_period(self->group);
OUTPUT:
  RETVAL


# ============================================================================ #

=head1 Server - DWAVDesk::Server

DWAVDesk::Server module contains functions to manipulate AV-Desk server.

Usage example:

    use DWAVDesk;

    $server = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");

    # Server information.
    $info = $server->get_info();
    print "Server info:\n";
    while (($key,$val) = each %$info) {
	    print "\t$key => $val\n";
    }

    # Server key information.
    $key_info = $server->get_key_info();
    print "Key info:\n";
    while (($key,$val) = each %$key_info) {
	    print "\t$key => $val\n";
    }

    # Server repositories state.
    $repos = $server->repositories();
    print "Repositories:\n";
    foreach $r(@$repos) {
	    print "\trev_date => $r->{\"rev_date\"}\n";
	    print "\trev_id => $r->{\"rev_id\"}\n";
	    print "\tcode => $r->{\"code\"}\n";
	    print "\tstate => $r->{\"state\"}\n";
	    print "\tname => $r->{\"name\"}\n";
	    print "\n";
    }

    # Server scans state.
    $stat = $server->statistics(0, 0, 10);
    print "Scans statistics:\n";
    $scan = $stat->{"scans"};
    while (($key,$val) = each %$scan) {
	    print "\t$key => $val\n";
    }

=cut

MODULE = DWAVDesk      PACKAGE = DWAVDesk::Server

# ============== #


=head2 Common

=cut


=head3 init()
Initializes new server connection resource.
Args:

  host - Host address of Dr.Web AV-Desk server.
  port - Port number of Dr.Web AV-Desk server.
  login - Authorization login.
  password - Authorization password.

Returns: initialized server connection resources.

=cut

dwavd::server
init(CLASS, host, port, login, password)
  char       *CLASS
  const char *host
  int         port
  const char *login
  const char *password
ALIAS:
  new = 1
PREINIT:
  dwavdapi_handle *handle = dwavdapi_init();
CODE:
  if (!handle)
    croak("Unable to initialize server connection because of memory allocation error.");

  if (dwavdapi_set_connect_info(handle, host, port, login, password) == DWAVDAPI_SUCCESS) {
    RETVAL = handle;
  } else {
    dwavdapi_destroy(handle);
    RETVAL = NULL;
  }
OUTPUT:
  RETVAL


=head3 get_info()

Returns array with Dr.Web AV-Desk server data.

Should be used with server object initialized by init().

Module data is represented as array with keys:

  uptime - Uptime Dr.Web AV-Desk server.
  groups_total - Total number of groups on server.
  groups_custom - Total number of custom groups on server.
  groups_system	-	Total number of system groups on server.
  groups_rate	- Total number of tariffs on server.
  stations_total - Total number of stations on server.
  stations_licensed - Total number of licensed stations on server (set to -1 unlimeted).
  stations_available - Total number of available stations on server (set to -1 unlimeted).
  version - Version of Dr.Web AV-Desk server.
  branch - Branch of Dr.Web AV-Desk server.
  api_version - API version of Dr.Web AV-Desk server.
  api_build - API build of Dr.Web AV-Desk server.
  uuid - ID of Dr.Web AV-Desk server.
  platform - Platform of Dr.Web AV-Desk server.
  os - Operation system of Dr.Web AV-Desk server.
  host - Host address of Dr.Web AV-Desk server.

=cut

SV *
get_info(self)
dwavd::server self
INIT:
  dwavdapi_server *lst = NULL;
  HV              *rh  = NULL;
CODE:
  if (dwavdapi_srv_get_info(self, &lst) == DWAVDAPI_SUCCESS && lst) {
    rh = (HV *)sv_2mortal((SV *)newHV());

    unsigned long uptime = lst->uptime;
    hv_store(rh, "uptime", sizeof("uptime") - 1, newSVuv(uptime), 0);

    unsigned long groups_total = lst->groups_total;
    hv_store(rh, "groups_total", sizeof("groups_total") - 1, newSVuv(groups_total), 0);

    unsigned long groups_custom = lst->groups_custom;
    hv_store(rh, "groups_custom", sizeof("groups_custom") - 1, newSVuv(groups_custom), 0);

    unsigned long groups_system = lst->groups_system;
    hv_store(rh, "groups_system", sizeof("groups_system") - 1, newSVuv(groups_system), 0);

    unsigned long groups_rate = lst->groups_rate;
    hv_store(rh, "groups_rate", sizeof("groups_rate") - 1, newSVuv(groups_rate), 0);

    unsigned long stations_total = lst->stations_total;
    hv_store(rh, "stations_total", sizeof("stations_total") - 1, newSVuv(stations_total), 0);

    int stations_licensed = lst->stations_licensed;
    hv_store(rh, "stations_licensed", sizeof("stations_licensed") - 1, newSViv(stations_licensed), 0);

    int stations_available = lst->stations_available;
    hv_store(rh, "stations_available", sizeof("stations_available") - 1, newSViv(stations_available), 0);

    const char *str = lst->version;
    if (str)
      hv_store(rh, "version", sizeof("version") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->branch;
    if (str)
      hv_store(rh, "branch", sizeof("branch") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->api_version;
    if (str)
      hv_store(rh, "api_version", sizeof("api_version") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->api_build;
    if (str)
      hv_store(rh, "api_build", sizeof("api_build") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->uuid;
    if (str)
      hv_store(rh, "uuid", sizeof("uuid") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->platform;
    if (str)
      hv_store(rh, "platform", sizeof("platform") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->os;
    if (str)
      hv_store(rh, "os", sizeof("os") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->host;
    if (str)
      hv_store(rh, "host", sizeof("host") - 1, newSVpv(str, strlen(str)), 0);

    dwavdapi_srv_info_destroy(lst);

    RETVAL = newRV((SV *)rh);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL

=head3 set_user_agent()

Sets HTTP custom user agent.

Args:
  
    user_agent - HTTP custom user agent for subsequent requests

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
set_user_agent(self, user_agent)
  dwavd::server self
  const char   *user_agent
CODE:
  RETVAL = !dwavdapi_set_user_agent(self, user_agent);
OUTPUT:
  RETVAL

=head3 admins()

Returns an array server administrators logins.

Should be used with server object initialized by init().

Example:

    $server = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");
    $admins_list = $server->admins();
    foreach(@$admins_list){
        print $_->{"login"}."\n";
    }

=cut

SV* 
admins(self)
  dwavd::server self
INIT:
  dwavdapi_list  *lst     = NULL;
  dwavdapi_admin *admin   = NULL;
  HV             *rh      = NULL;
  AV             *results = NULL;
  const char     *id;
  const char     *login;
CODE:
  if (dwavdapi_admin_get_list(self, &lst) == DWAVDAPI_SUCCESS && lst) {
    results = (AV *)sv_2mortal((SV *)newAV());

    do {
      admin = (dwavdapi_admin *)dwavdapi_list_current_data(lst);
      rh    = (HV *)sv_2mortal((SV *)newHV());

      id = admin->id;
      if(id)
        hv_store(rh, "id", sizeof("id") - 1, newSVpv(id, strlen(id)), 0);

      login = admin->login;
      if(login)
        hv_store(rh, "login", sizeof("login") - 1, newSVpv(login, strlen(login)), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);

    dwavdapi_list_destroy(lst, (dwavdapi_dtor_funct)dwavdapi_admin_destroy);

    RETVAL = newRV((SV *)results);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL

=head3 groups()

Returns an array server groups ids.

Should be used with server object initialized by init().

Example:

    $server = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");
    $groups_list = $server->groups();
    foreach(@$groups_list){
        print $_->{"id"}."\n";
    }

=cut

SV *
groups(self)
  dwavd::server self
INIT:
  dwavdapi_list  *lst     = NULL;
  dwavdapi_group *group   = NULL;
  HV             *rh      = NULL;
  AV             *results = NULL;
  const char     *id;
CODE:
  if (dwavdapi_group_get_list(self, &lst) == DWAVDAPI_SUCCESS && lst) {
    results = (AV *)sv_2mortal((SV *)newAV());

    do {
      group = (dwavdapi_group *)dwavdapi_list_current_data(lst);
      rh    = (HV *)sv_2mortal((SV *)newHV());

      id = group->id;
      if(id)
        hv_store(rh, "id", sizeof("id") - 1, newSVpv(id, strlen(id)), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);

    dwavdapi_list_destroy(lst, (dwavdapi_dtor_funct)dwavdapi_group_destroy);

    RETVAL = newRV((SV *)results);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL


=head3 tariffs()

Returns an array server tariffs ids.

Should be used with server object initialized by init().

Example:

    $server = DWAVDesk::Server->init("http://192.168.1.70", 9080, "login", "password");
    $tariffs_list = $server->tariffs();
    foreach(@$tariffs_list){
        print $_->{"id"}."\n";
    }

=cut

SV *
tariffs(self)
  dwavd::server self
INIT:
  dwavdapi_list  *lst     = NULL;
  dwavdapi_group *group   = NULL;
  HV             *rh      = NULL;
  AV             *results = NULL;
  const char     *id;
CODE:
  if (dwavdapi_tariff_get_list(self, &lst) == DWAVDAPI_SUCCESS && lst) {
    results = (AV *)sv_2mortal((SV *)newAV());

    do {
      group = (dwavdapi_group *)dwavdapi_list_current_data(lst);
      rh    = (HV *)sv_2mortal((SV *)newHV());

      id = group->id;
      if(id)
        hv_store(rh, "id", sizeof("id") - 1, newSVpv(id, strlen(id)), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);

    dwavdapi_list_destroy(lst, (dwavdapi_dtor_funct)dwavdapi_group_destroy);

    RETVAL = newRV((SV *)results);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL


=head3 get_key_info()

Returns array with Dr.Web AV-Desk server key data.

Should be used with server object initialized by init().

Module data is represented as array with keys:

    created - Created timestamp
    expires - Expiration timestamp
    activated - Activated timestamp
    products - Licensed components number
    clients - Licensed clients number
    servers - Licensed server number
    user - User ID
    user_name - User name
    dealer - Dealer ID
    dealer_name - Dealer name
    antispam - Antispam licensed flag: 1 - licensed; 0 - not licensed
    md5 - MD5 key hash
    uuid - Key UUID
    sn - Serial number

=cut

SV *
get_key_info(self)
  dwavd::server self
INIT:
  dwavdapi_server_key *lst = NULL;
  HV                  *rh  = NULL;
CODE:
  if (dwavdapi_srv_get_key_info(self, &lst) == DWAVDAPI_SUCCESS && lst) {
    rh  = (HV *)sv_2mortal((SV *)newHV());

    unsigned long value = lst->products;
    hv_store(rh, "products", sizeof("products") - 1, newSVuv(value), 0);

    unsigned long clients = lst->clients;
    hv_store(rh, "clients", sizeof("clients") - 1, newSVuv(clients), 0);

    value = lst->user;
    hv_store(rh, "user", sizeof("user") - 1, newSVuv(value), 0);

    value = lst->servers;
    hv_store(rh, "servers", sizeof("servers") - 1, newSVuv(value), 0);

    value = lst->dealer;
    hv_store(rh, "dealer", sizeof("dealer") - 1, newSVuv(value), 0);

    value = lst->antispam;
    hv_store(rh, "antispam", sizeof("antispam") - 1, newSVuv(value), 0);

    value = lst->created;
    hv_store(rh, "created", sizeof("created") - 1, newSVuv(value), 0);

    value = lst->expires;
    hv_store(rh, "expires", sizeof("expires") - 1, newSVuv(value), 0);

    value = lst->activated;
    hv_store(rh, "activated", sizeof("activated") - 1, newSVuv(value), 0);

    const char *str = lst->md5;
    if(str)
      hv_store(rh, "md5", sizeof("md5") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->uuid;
    if(str)
      hv_store(rh, "uuid", sizeof("uuid") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->dealer_name;
    if(str)
      hv_store(rh, "dealer_name", sizeof("dealer_name") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->user_name;
    if(str)
      hv_store(rh, "user_name", sizeof("user_name") - 1, newSVpv(str, strlen(str)), 0);

    str = lst->sn;
    if(str)
      hv_store(rh, "sn", sizeof("sn") - 1, newSVpv(str, strlen(str)), 0);

    dwavdapi_srv_key_info_destroy(lst);

    RETVAL = newRV((SV *)rh);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL


=head3 repositories()

Returns array with server repositories states.

Retured array keys:

  rev_date - Last revision date
  rev_id - Last revision ID
  state	- State string
  name - Repository name
  code - Repository code

Should be used with server object initialized by init().

=cut

SV *
repositories(self)
  dwavd::server self
INIT:
  dwavdapi_list              *lst     = NULL;
  dwavdapi_server_repository *rep     = NULL;
  HV                         *rh      = NULL;
  AV                         *results = NULL;
  const char                 *name;
  const char                 *state;
  const char                 *str;
  unsigned                    rev_id;
  time_t                      rev_date;
CODE:
  if (dwavdapi_srv_get_repositories_list(self, &lst) == DWAVDAPI_SUCCESS && lst) {
    results = (AV *)sv_2mortal((SV *)newAV());

    do {
      rep = (dwavdapi_server_repository *)dwavdapi_list_current_data(lst);
      rh  = (HV *)sv_2mortal((SV *)newHV());

      name = rep->name;
      if(name)
        hv_store(rh, "name", sizeof("name") - 1, newSVpv(name, strlen(name)), 0);

      state = rep->state;
      if(state)
        hv_store(rh, "state", sizeof("state") - 1, newSVpv(state, strlen(state)), 0);

      str = rep->code;
      if(str)
        hv_store(rh, "code", sizeof("code") - 1, newSVpv(str, strlen(str)), 0);

      rev_id = rep->rev_id;
      hv_store(rh, "rev_id", sizeof("rev_id") - 1, newSVnv(rev_id), 0);

      rev_date = rep->rev_date;
      hv_store(rh, "rev_date", sizeof("rev_date") - 1, newSVnv(rev_date), 0);

      av_push(results, newRV((SV *)rh));
    } while (dwavdapi_list_next(lst) != DWAVDAPI_FAILURE);

    dwavdapi_list_destroy(lst, (dwavdapi_dtor_funct)dwavdapi_srv_repository_destroy);

    RETVAL = newRV((SV *)results);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL

=head3 statistics()

Returns array with server statistics.

Args:

    from - From filter timestamp or 0 to get data since 1970
    till - Till filter timestamp. 0 to get data till current day
    virtop - Number of top viruses to return

Retured array keys:

  scans - see 'Scans statistics'
  state - see 'Station states statistics'
  infections - see 'Infections statistics'
  viruses - see 'Virus statistics'
  traffic - Traffic statistics
  groups_total - Total number of groups on server
  groups_custom - Total number of custom groups on server
  groups_system - Total number of system groups on server
  groups_rate - Total number of tariffs on server
  stations_total - Total number of stations on server

Should be used with server object initialized by init().

=cut

SV *
statistics(self, from, till, virtop)
  dwavd::server self
  unsigned int  from
  unsigned int  till
  unsigned int  virtop
INIT:
  dwavdapi_server_statistics *tmp     = NULL;
  HV                         *results = NULL;
CODE:
  if (dwavdapi_srv_get_statistics(self, &tmp, from, till, virtop) == DWAVDAPI_SUCCESS && tmp) {
    results = (HV *)sv_2mortal((SV *)newHV());

    /* Scan stats */
    HV                       *scans     = (HV *)sv_2mortal((SV *)newHV());
    dwavdapi_statistics_scans scans_lst = dwavdapi_srv_statistics_scans(tmp);

    double scans_size = scans_lst.size;
    hv_store(scans, "size", sizeof("size") - 1, newSVnv(scans_size), 0);

    double scans_files = scans_lst.files;
    hv_store(scans, "files", sizeof("files") - 1, newSVnv(scans_files), 0);

    unsigned long scans_infected = scans_lst.infected;
    hv_store(scans, "infected", sizeof("infected") - 1, newSVuv(scans_infected), 0);

    unsigned long scans_deleted = scans_lst.deleted;
    hv_store(scans, "deleted", sizeof("deleted") - 1, newSVuv(scans_deleted), 0);

    unsigned long scans_moved = scans_lst.moved;
    hv_store(scans, "moved", sizeof("moved") - 1, newSVuv(scans_moved), 0);

    unsigned long scans_cured = scans_lst.cured;
    hv_store(scans, "cured", sizeof("cured") - 1, newSVuv(scans_cured), 0);

    unsigned long scans_errors = scans_lst.errors;
    hv_store(scans, "errors", sizeof("errors") - 1, newSVuv(scans_errors), 0);

    unsigned long scans_renamed = scans_lst.renamed;
    hv_store(scans, "renamed", sizeof("renamed") - 1, newSVuv(scans_renamed), 0);

    unsigned long scans_locked = scans_lst.locked;
    hv_store(scans, "locked", sizeof("locked") - 1, newSVuv(scans_locked), 0);

    hv_store(results, "scans", sizeof("scans") - 1, newRV((SV *)scans), 0);

    /* Station states. */
    HV                                *state     = (HV *)sv_2mortal((SV *)newHV());
    dwavdapi_statistics_stations_state state_lst = dwavdapi_srv_statistics_stations_state(tmp);

    unsigned long state_online = state_lst.online;
    hv_store(state, "infected", sizeof("infected") - 1, newSVuv(state_online), 0);

    unsigned long state_deinstalled = state_lst.deinstalled;
    hv_store(state, "deinstalled", sizeof("deinstalled") - 1, newSVuv(state_deinstalled), 0);

    unsigned long state_blocked = state_lst.blocked;
    hv_store(state, "blocked", sizeof("blocked") - 1, newSVuv(state_blocked), 0);

    unsigned long state_expired = state_lst.expired;
    hv_store(state, "expired", sizeof("expired") - 1, newSVuv(state_expired), 0);

    unsigned long state_offline = state_lst.offline;
    hv_store(state, "offline", sizeof("offline") - 1, newSVuv(state_offline), 0);

    unsigned long state_activated = state_lst.activated;
    hv_store(state, "activated", sizeof("activated") - 1, newSVuv(state_activated), 0);

    unsigned long state_unactivated = state_lst.unactivated;
    hv_store(state, "unactivated", sizeof("unactivated") - 1, newSVuv(state_unactivated), 0);

    unsigned long state_total = state_lst.total;
    hv_store(state, "total", sizeof("total") - 1, newSVuv(state_total), 0);

    hv_store(results, "state", sizeof("state") - 1, newRV((SV *)state), 0);

    /* Infections */
    HV                            *infections     = (HV *)sv_2mortal((SV *)newHV());
    dwavdapi_statistics_infections infections_lst = dwavdapi_srv_statistics_infections(tmp);

    unsigned long infections_deleted = infections_lst.deleted;
    hv_store(infections, "deleted", sizeof("deleted") - 1, newSVuv(infections_deleted), 0);

    unsigned long infections_cured = infections_lst.cured;
    hv_store(infections, "cured", sizeof("cured") - 1, newSVuv(infections_cured), 0);

    unsigned long infections_incurable = infections_lst.incurable;
    hv_store(infections, "incurable", sizeof("incurable") - 1, newSVuv(infections_incurable), 0);

    unsigned long infections_moved = infections_lst.moved;
    hv_store(infections, "moved", sizeof("moved") - 1, newSVuv(infections_moved), 0);

    unsigned long infections_locked = infections_lst.locked;
    hv_store(infections, "locked", sizeof("locked") - 1, newSVuv(infections_locked), 0);

    unsigned long infections_renamed = infections_lst.renamed;
    hv_store(infections, "renamed", sizeof("renamed") - 1, newSVuv(infections_renamed), 0);

    unsigned long infections_errors = infections_lst.errors;
    hv_store(infections, "errors", sizeof("errors") - 1, newSVuv(infections_errors), 0);

    unsigned long infections_ignored = infections_lst.ignored;
    hv_store(infections, "ignored", sizeof("ignored") - 1, newSVuv(infections_ignored), 0);

    unsigned long infections_total = infections_lst.total;
    hv_store(infections, "total", sizeof("total") - 1, newSVuv(infections_total), 0);

    hv_store(results, "infections", sizeof("infections") - 1, newRV((SV *)infections), 0);

    /* Traffic */
    HV                          *traffic = (HV *)sv_2mortal((SV *)newHV());
    dwavdapi_statistics_traffic lst      = dwavdapi_srv_statistics_traffic(tmp);

    double in = lst.in;
    hv_store(traffic, "in", sizeof("in") - 1, newSVnv(in), 0);

    double out = lst.out;
    hv_store(traffic, "out", sizeof("out") - 1, newSVnv(out), 0);

    double total = lst.total;
    hv_store(traffic, "total", sizeof("total") - 1, newSVnv(total), 0);

    hv_store(results, "traffic", sizeof("traffic") - 1, newRV((SV *)traffic), 0);

    /* Viruses */
    dwavdapi_list            *objects = NULL;
    dwavdapi_infected_object *object  = NULL;
    dwavdapi_list            *viruses = dwavdapi_srv_statistics_viruses_list(tmp);
    dwavdapi_virus           *virus   = NULL;

    AV *viruses_arr = (AV *)sv_2mortal((SV *)newAV());
    HV *virus_hash;

    AV *objects_arr;
    HV *object_hash;

    if (viruses) {
      do {
        virus_hash = (HV *)sv_2mortal((SV *)newHV());
        virus      = (dwavdapi_virus *)dwavdapi_list_current_data(viruses);

        const char *virus_name = dwavdapi_virus_name(virus);
        unsigned objects_count = dwavdapi_virus_infected_objects_count(virus);

        hv_store(virus_hash, "objects_count", sizeof("objects_count") - 1, newSVuv(objects_count), 0);
        hv_store(virus_hash, "name", sizeof("name") - 1, newSVpv(virus_name, strlen(virus_name)), 0);

        objects     = dwavdapi_virus_infected_objects_list(virus);
        objects_arr = (AV *)sv_2mortal((SV *)newAV());

        char *str;

        do {
          object = (dwavdapi_infected_object *)dwavdapi_list_current_data(objects);

          if (object) {
            object_hash = (HV *)sv_2mortal((SV *)newHV());

            str = object->path;
            if(str)
              hv_store(object_hash, "path", sizeof("path") - 1, newSVpv(str, strlen(str)), 0);

            str = object->owner;
            if(str) 
              hv_store(object_hash, "owner", sizeof("owner") - 1, newSVpv(str, strlen(str)), 0);

            str = object->username;
            if(str) 
              hv_store(object_hash, "username", sizeof("username") - 1, newSVpv(str, strlen(str)), 0);

            str = object->station_uuid;
            if(str)
              hv_store(object_hash, "station_uuid", sizeof("station_uuid") - 1, newSVpv(str, strlen(str)), 0);

            hv_store(object_hash, "originator", sizeof("originator") - 1, newSVuv(object->originator), 0);
            hv_store(object_hash, "treatment", sizeof("treatment") - 1, newSVuv(object->treatment), 0);
            hv_store(object_hash, "type", sizeof("type") - 1, newSVuv(object->type), 0);
            hv_store(object_hash, "infection_type", sizeof("infection_type") - 1, newSVuv(object->infection_type), 0);

            av_push(objects_arr, newRV((SV *)object_hash));
          }
        } while(dwavdapi_list_next(objects) != DWAVDAPI_FAILURE);

        hv_store(virus_hash, "infected_objects", sizeof("infected_objects") - 1, newRV((SV *)objects_arr), 0);
        av_push(viruses_arr, newRV((SV *)virus_hash));
      } while(dwavdapi_list_next(viruses) != DWAVDAPI_FAILURE);
    }

    hv_store(results, "viruses", sizeof("viruses") - 1, newRV((SV *)viruses_arr), 0);

    /* Groups and stations */
    hv_store(results, "groups_total", sizeof("groups_total") - 1, newSVuv(tmp->groups_total), 0);
    hv_store(results, "groups_custom", sizeof("groups_custom") - 1, newSVuv(tmp->groups_custom), 0);
    hv_store(results, "groups_system", sizeof("groups_system") - 1, newSVuv(tmp->groups_system), 0);
    hv_store(results, "groups_rate", sizeof("groups_rate") - 1, newSVuv(tmp->groups_rate), 0);
    hv_store(results, "stations_total", sizeof("stations_total") - 1, newSVuv(tmp->stations_total), 0);
    RETVAL = newRV((SV *)results);

    dwavdapi_srv_statistics_destroy(tmp);
  }
  else {
    RETVAL = &PL_sv_undef;
  }
OUTPUT:
  RETVAL

=head3 run_task()

Runs server task.

Args:

    task_id - task identifier known to target server

Should be used with server object initialized by new().

Returns: 1 if operation is successful, 0 - otherwise.

=cut

bool
run_task(self, task_id)
  dwavd::server self
  const char   *task_id
CODE:
  RETVAL = !dwavdapi_srv_run_task(self, task_id);
OUTPUT:
  RETVAL

void
DESTROY(self)
  dwavd::server self
CODE:
  dwavdapi_destroy(self);

# ============================================================================ #
