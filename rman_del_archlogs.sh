#!/bin/bash
. ~/.bash_profile
export PATH=$ORACLE_HOME/bin:$ORACLE_HOME/OPatch:$PATH
export ORACLE_SID=$parameter
##############
rman target / <<SCRIPT
delete noprompt archivelog until time 'sysdate-1/24';
Exit;
SCRIPT
