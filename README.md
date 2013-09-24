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
-----

Create a new data bag item named `webapp.json` in `data_bags/sites`. This data bag item will be used to create an Apache Virtual Host configuration file.

```
{
	"id": "webapp",
	"host": "webapp.dev",
	"aliases": [
		"www.webapp.dev",
		"webapp.*.xip.io"
	]
}
```