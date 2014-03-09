NSString+SmartTrim
==================

Trims a string to a given length, including support for prefixes and suffixes

Demo
====

The demo/ folder contains a demo project showing NSString+SmartTrim in
use. Open and run it.

Usage
=====

We all know UILabel will add an ellipsis to the end of a string
automatically. Unfortunately, this doesn't help when you need to send
a string to Twitter. Maybe you always want a certain prefix and/or
suffix on the string, and other than that it should fill up as many of
the 140 characters as possible. Just call this method and you'll be set:

	[_src.text smartTrimToLength:140
	                  withPrefix:@"SmartTrim: "
	                      suffix:@" (awesome, huh?)"];

Compatibility
=============

This class has been tested back to iOS 6.0.

Implementation
==============

This class is implemented using substringWithRange: and
stringWithFormat: to do basic string splitting and combining.

License
=======

This code is released under the MIT License. See the LICENSE file for
details.