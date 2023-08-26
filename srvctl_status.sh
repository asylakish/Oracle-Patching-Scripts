#!/bin/bash
. ~/.bash_profile
export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_3
export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:$PATH
srvctl status database -d SMPC_KPO;
