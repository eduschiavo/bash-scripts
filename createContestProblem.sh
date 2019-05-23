############################L.E.C.A.S. bash-scripts############################
# @file createContestProblem.sh
# @author Luiz Eduardo Camargo Aranha Schiavo <eduschiavo@gmail.com>
# @version 1.0.1
# @date 2014-2019
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
# createContestProblem.sh creates source, input test and output in "src", "in"
# and "out" directorys, then open it in the default editor
# 
# 2014-07    - 1.0   - create and open files
# 2019-05-23 - 1.0.1 - parameterized Public version, checks and creates needed
#                      directorys for it.

#!/bin/bash

# Default editor is kate, replace with your choice (gedit, emacs, geany...)
EDITOR=kate
#default is c++ replace with the extension you use (c, py, java...)
EXTENSION=cpp

# creates and open a problem, input and output solution from param passed by
# terminal (A, 1022, etc) 

if [ -z "$1" ]; then
    echo Error!! No parameters!
    echo Default syntax: ./createContestProblem.sh problem 
    exit 1
fi


if [ ! -d "src" ]; then
    mkdir -p src
    echo src directory created
fi
if [ ! -d "in" ]; then
    mkdir -p in
    echo in directory created
fi
if [ ! -d "out" ]; then
    mkdir -p out
    echo out directory created
fi

$EDITOR src/$1.$EXTENSION in/$1.in out/$1.out
