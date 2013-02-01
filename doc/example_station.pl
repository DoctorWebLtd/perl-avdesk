use DWAVDesk;

# Connecting to server using address, port, login and password.
$server = DWAVDesk::Server->init("http://192.168.1.10", 9080, "admin", "root");

# Initializing station and storing its reference to $station.
$station = DWAVDesk::Station->new($server);

# Changing stations tariff group.
$station->set_tariff_id(DWAVDesk::TARIFF_ID_CLASSIC);

# Changing stations parent group.
$station->set_parent_id('c060a9c0-8f75-4a8c-b2da-044aa0eb98b7');

# Storing station to a server.
$station->create();

# Printing server generated station UUID.
print $station->id();
