#!/bin/bash
. ~/.bash_profile
export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:$PATH
export ORACLE_SID=$parameter
cd $ORACLE_HOME/OPatch
##############
sqlplus / as sysdba <<SCRIPT
show parameter db_name;
col name for a10;
select name, open_mode from gv\$pdbs;
Exit;
SCRIPT
echo $ORACLE_SID;
