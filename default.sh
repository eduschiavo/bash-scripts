############################L.E.C.A.S. bash-scripts############################
# @file 
# @author Luiz Eduardo Camargo Aranha Schiavo <eduschiavo@gmail.com>
# @version 1.0.1
# @date 
#
# @section LICENSE
# 
# This file is part of L.E.C.A.S. bash-scripts, and it is free: you can 
# redistribute it and/or modify it under the terms of the GNU General Public
# License as published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# L.E.C.A.S. bash-scripts: distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
# more details.
# 
# You should have received a copy of the GNU General Public License along with 
# L.E.C.A.S. bash-scripts. If not, see <https://www.gnu.org/licenses/>.
# 
# @section DESCRIPTION
# 
# XXXXXXXXXXXX.sh do something
# 
# 2014-07    - 1.0   - info
# 2019-05-23 - 1.0.1 - parameterized Public version, 

#!/bin/bash
if [ -z "$1" ]; then
    echo Error!! No parameters!
    echo Default syntax: ./XXXXXXXXXXXX.sh problem 
    exit 1
fi
