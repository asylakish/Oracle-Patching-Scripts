#!/bin/bash
. ~/.bash_profile
export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:$PATH
export ORACLE_SID=$parameter
cd $ORACLE_HOME/OPatch
##############
sqlplus / as sysdba <<SCRIPT
startup upgrade;
alter pluggable database all open upgrade;
Exit;
SCRIPT
