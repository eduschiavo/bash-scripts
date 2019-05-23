############################L.E.C.A.S. bash-scripts############################
# @file install.sh
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
# L.E.C.A.S. bash-scripts consists of a set of useful bash scripts for several
# uses, from programming contests to bash utilities. 
#

#!/bin/bash


if [ ! -d "$HOME/bin" ]; then
    mkdir -p $HOME/bin
fi

# scripts for programming contests
cp createContestProblem.sh ~/bin/
cp runContestProblem.sh ~/bin/


# general useful bash tools
cp headTail.sh ~/bin/
