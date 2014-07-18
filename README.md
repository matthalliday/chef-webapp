chef-webapp
===========

Description
-----------
Configuration for web apps using PHP

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
		"webapp.ngrok.com"
	],
	"docroot": "/var/www/webapp.dev/public" // Optional - defaults to /var/www
}
```

Advanced Usage
--------------

If you need to test your web app on different devices/systems, ngrok is highly recommended. See the "[Requesting a specific tunnel subdomain](https://ngrok.com/usage)" section of the documentation for more information.