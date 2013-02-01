use DWAVDesk;

# Connecting to server using address, port, login and password.
$server = DWAVDesk::Server->init("http://192.168.1.10", 9080, "admin", "root");

# Initializing tariff group and storing its reference to $tariff.
$tariff = DWAVDesk::Tariff->new($server);

# Changing tariff group name.
$tariff->set_name("NEW_TARIFF");

# "Tariffs" parent group will be set automatically for $tariff
# Setting tariff group grace period.
$tariff->set_grace_period(10);

# Storing tariff group to a server.
$tariff->create();

# Printing server generated tariff group UUID.
print $tariff->id();
