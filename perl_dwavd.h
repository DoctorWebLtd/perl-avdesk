#include <dwavdapi/avdesk.h>
#include <dwavdapi/server.h>
#include <dwavdapi/admins.h>
#include <dwavdapi/groups.h>	
#include <dwavdapi/stations.h>
#include <dwavdapi/tariffs.h>
#include <dwavdapi/list.h>

typedef struct {
    dwavdapi_admin *admin;
    dwavdapi_handle *handle;
} dwavd_admin;	

typedef struct {
    dwavdapi_group *group;
    dwavdapi_handle *handle;
} dwavd_group;	

typedef struct {
    dwavdapi_group *tariff;
    dwavdapi_handle *handle;
} dwavd_tariff;	

typedef struct {
    dwavdapi_station *station;
    dwavdapi_handle *handle;
} dwavd_station;	

typedef dwavdapi_handle * dwavd__server;
typedef dwavd_admin * dwavd__admin;
typedef dwavd_group * dwavd__group;
typedef dwavd_tariff * dwavd__tariff;
typedef dwavd_station * dwavd__station;
