############################L.E.C.A.S. bash-scripts############################
# @file runContestProblem.sh
# @author Luiz Eduardo Camargo Aranha Schiavo <eduschiavo@gmail.com>
# @version 1.0
# @date 2019
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
# runContestProblem.sh compiles, run with time, after it diffs the output with
# correct answer
# 
# 2014-07    - 1.0   - run files
# 2019-05-23 - 1.0.1 - parameterized Public version, compile, run diffs output
#                      erases temp and binary after done

#!/bin/bash

# Default compiler
COMPILER=g++
#default is c++ replace with the extension you use (c, py, java...)
EXTENSION=cpp
#default optimization flags
FLAGS=-O2 
#default language dialet
DIALET=-std=c++11
#for math library
LIBS=-lm
#erase binary?
ERASE=true

$COMPILER src/$1.$EXTENSION $FLAGS $DIALET $LIBS -o $1

time ./$1 <in/$1.in >$1.res
diff $1.res out/$1.out
rm $1.res 
if $ERASE; then
    rm $1
fi
