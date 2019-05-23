############################L.E.C.A.S. bash-scripts############################
# @file headTail.sh
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
# runContestProblem.sh compiles, run with time, after it diffs the output with
# correct answer
# 
# 2014-07    - 1.0   - info
# 2019-05-23 - 1.0.1 - parameterized Public version, 

#!/bin/bash
QTD=$2
if [ -z "$2" ]; then
    QTD=5
fi

if [ -z "$1" ]; then
    echo Error!! No parameters!
    echo Default syntax: ./headTail.sh filename 
    echo Default syntax: ./headTail.sh filename lines
    exit 1
fi
LINES=$(< "$1" wc -l)
head -$QTD $1
echo ......
tail -$QTD $1
echo ......
echo Line count: $LINES

