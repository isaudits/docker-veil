# docker-msf

Docker implementation of Veil exploit framework.

https://github.com/Veil-Framework/Veil


## Description

Warning - this thing is BIG! Image size tops out at around 4 GB once built...


## Usage
Build:

    docker build -t veil .
    
or

    ./build.sh
    
Run:

    docker run -it --rm veil ./Veil.py <OPTIONS>
    
or
    
    ./veil.sh <OPTIONS>


--------------------------------------------------------------------------------

Copyright 2018

Matthew C. Jones, CPA, CISA, OSCP, CCFE

IS Audits & Consulting, LLC - <http://www.isaudits.com/>

TJS Deemer Dana LLP - <http://www.tjsdd.com/>

--------------------------------------------------------------------------------

Except as otherwise specified:

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see <http://www.gnu.org/licenses/>.