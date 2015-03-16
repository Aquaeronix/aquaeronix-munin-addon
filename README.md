Aquaeronix: Munin Addon
--------------------------------------------------------------

&copy; 2012 lynix <lynix47@gmail.com>, 

&copy; 2013 JinTu <JinTu@praecogito.com> lynix <lynix47@gmail.com>, 

&copy; 2014 barracks510 <barracks510@gmail.com>, 

&copy; 2015 barracks510 <barracks510@gmail.com>
 

SUMMARY
----------------
Aquaeronix aims at providing a C interface for accessing the Aquaero5(R) USB
device by 'Aqua Computer' (http://www.aqua-computer.de).

It consists of a set of functions for data access and conversion, and a
command-line tool using these functions as an example implementation.


REQUIREMENTS
----------------
The plugin requires munin to be functioning on the computer.


BUILDING/SETUP
----------------
Copy plugin files into `/usr/local/munin/lib/plugins` and make executable. Then create a symbolic link to the `servicedir`. 

Copy the configuration files into the `plugin-conf.d` directory. 

More information on installing munin plugins on http://guide.munin-monitoring.org


BUGS / CONTACT
----------------
Feel free to report any bugs you find using the 'issues' function on GitHub. If
you wish to contact the authors, you can drop them an email.
You may contact barracks510 at barracks510@gmail.com.
For lynix, you might wish to use his GPG key, #4804CCA9 on keys.gnupg.net


LICENSE
----------------
This program is published under the terms of the GNU General Public License,
version 3. See the file 'LICENSE' for more information.
