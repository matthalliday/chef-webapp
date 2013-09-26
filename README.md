chef-webapp
===========

Description
-----------
Configuration for web apps using PHP and Ruby.

Requirements
------------

Has only been tested with Ubuntu.

Attributes
----------

There are no attributes for this cookbook.

Usage
------

Create a new data bag item named `webapp.json` in `data_bags/sites`. This data bag item will be used to create an Apache Virtual Host configuration file.

```
{
	"id": "webapp",
	"host": "webapp.dev",
	"aliases": [
		"www.webapp.dev",
		"webapp.*.xip.io"
	],
	"docroot": "/var/www/webapp.dev/public" // Optional - defaults to /var/www
}
```

Advanced Usage
--------------

If you want to make your web app available to your local network, you will need to configure your Vagrantfile to use a public network (and also disable NFS folder syncing). Your web app will then be available to any device on your local network via the `xip.io` alias.

For example, if your alias is set to `webapp.*.xip.io` and your guest machine IP address is `10.0.1.34`, then you will be able to access your app via `http://webapp.10.0.1.34.xip.io`.

If you don't know your guest machine's IP address, you can find it by using `vagrant ssh` and `ifconfig`.