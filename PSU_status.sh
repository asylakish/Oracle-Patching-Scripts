#!/bin/bash
. ~/.bash_profile
export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:$PATH
export ORACLE_SID=$parameter
cd $ORACLE_HOME/OPatch
##############
sqlplus / as sysdba <<SCRIPT
show parameter db_name;
show parameter cluster_database;
set serverout on;
exec dbms_qopatch.get_sqlpatch_status;
Exit;
SCRIPT
echo $ORACLE_SID;
