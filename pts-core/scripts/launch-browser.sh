#!/bin/sh

# Phoronix Test Suite
# URLs: http://www.phoronix.com, http://www.phoronix-test-suite.com/
# Copyright (C) 2008 - 2009, Phoronix Media
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

if [ "`which $2`" ]
then
	$2 "$1"
elif [ "`which x-www-browser`" ] && [! "`which konqueror`" ]
then
	x-www-browser "$1"
elif [ "`which xdg-open`" ]
then
	xdg-open "$1"
elif [ "`which epiphany`" ]
then
	epiphany "$1"
elif [ "`which firefox`" ]
then
	firefox "$1"
elif [ "`which mozilla`" ]
then
	mozilla "$1"
elif [ "`which open`" ]
then
	open "$1"
else
	echo "URL: $1"
fi

