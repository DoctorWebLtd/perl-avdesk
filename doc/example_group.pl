use DWAVDesk;

# Connecting to server using address, port, login and password.
$server = DWAVDesk::Server->init("http://192.168.1.10", 9080, "admin", "root");

# Initializing group and storing its reference to $group
$group = DWAVDesk::Group->new($server);

# Changing group name to "My_group".
$group->set_name("My_group");

# Storing group to a server.
$group->create();

# Printing server generated group UUID.
print $group->id();
