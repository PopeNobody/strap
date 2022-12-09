exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash -c 'source ~/etc/env.sh; exec bash'
