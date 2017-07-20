#/bin/bash

# regen all example topologies using dev-time etc execution

node ../index.js g diagram $PWD/prod-2dc-19n-5sn-topology.json $PWD/prod-2dc-19n-5sn-diagram.svg
node ../index.js g portrequest $PWD/prod-2dc-19n-5sn-topology.json $PWD/prod-2dc-19n-5sn-portrequest.csv
node ../index.js g inventory -u opapiadmin -k "~/.ssh/id_ansible" $PWD/prod-2dc-19n-5sn-topology.json $PWD/prod-2dc-19n-5sn-inventory.html

node ../index.js g diagram $PWD/uat-12n-4sn-topology.json $PWD/uat-12n-4sn-diagram.svg
node ../index.js g portrequest $PWD/uat-12n-4sn-topology.json $PWD/uat-12n-4sn-portrequest.csv
node ../index.js g inventory -u opapiadmin -k "~/.ssh/id_ansible" $PWD/uat-12n-4sn-topology.json $PWD/uat-12n-4sn-inventory.html

node ../index.js g diagram $PWD/prod-1dc-19n-5sn-topology.json $PWD/prod-1dc-19n-5sn-diagram.svg
node ../index.js g portrequest $PWD/prod-1dc-19n-5sn-topology.json $PWD/prod-1dc-19n-5sn-portrequest.csv
node ../index.js g inventory -u opapiadmin -k "~/.ssh/id_ansible" $PWD/prod-1dc-19n-5sn-topology.json $PWD/prod-1dc-19n-5sn-inventory.html

node ../index.js g diagram $PWD/uat-12n-4sn-allcore-v2-topology.json $PWD/uat-12n-4sn-allcore-v2-diagram.svg
node ../index.js g portrequest $PWD/uat-12n-4sn-allcore-v2-topology.json $PWD/uat-12n-4sn-allcore-v2-portrequest.csv
node ../index.js g inventory -u opapiadmin -k "~/.ssh/id_ansible" $PWD/uat-12n-4sn-allcore-v2-topology.json $PWD/uat-12n-4sn-allcore-v2-inventory.html
