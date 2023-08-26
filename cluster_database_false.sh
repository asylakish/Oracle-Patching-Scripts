#!/bin/bash
. ~/.bash_profile
export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:$PATH
export ORACLE_SID=$parameter
##############
sqlplus / as sysdba <<SCRIPT
show parameter db_name;
alter system set cluster_database=false scope=spfile;
Exit;
SCRIPT
