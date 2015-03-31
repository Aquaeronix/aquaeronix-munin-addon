#!/bin/bash
#
#install.sh
#This file is part of Aquaeronix
#
#Copyright (C) 2015 barracks510 <barracks510@gmail.com>
#
#Aquaeronix is free software; you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation; either version 2 of the License, or
#(at your option) any later version.
#
#Aquaeronix is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Aquaeronix. If not, see <http://www.gnu.org/licenses/>.
#

if [ "x$(id -u)" != 'x0' ]; then
    echo 'Error: this script can only be executed by root'
    exit 1
fi

#determine OS
case $(head -n1 /etc/issue | cut -f 1 -d ' ') in
    Debian)     type="debian" ;;
    Ubuntu)     type="ubuntu" ;;
    *)          type="rhel" ;;
esac

#search for munin package install
if [ $type == debian || $type == ubuntu ]; then
    echo 'This system runs Debian or Ubuntu'
    if [ $(dpkg-query -W -f='${Status}' munin 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        echo 'Munin is not installed.'
        echo 'Munin will be installed.'
        apt-get install munin -y
    fi
fi

#install munin if not already installed

#copy plugin files into proper directories

#confirm installation
