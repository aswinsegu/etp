# etp alpha release


# ETP Edge Topology Processor

Utility to generate different artifacts using Edge topology configuration definition.

A configuration is written using JSON format. 

Examples of configurations can be seen in the examples folder.

## Quick Start Guide

1. install utility from github

npm install -g https://github.com/yuriylesyuk/etp/tarball/master


2. Fetch an example topology to your working folder. 

```shell
wget https://raw.githubusercontent.com/yuriylesyuk/etp/master/examples/uat-19n-3sn-topology.json
```
or
```shell
wget https://raw.githubusercontent.com/yuriylesyuk/etp/master/examples/uat-12n-4sn-topology.json
```

3. Generate svg diagram for the topology.
```shell
etp generate diagram $PWD/uat-19n-3sn-topology.json $PWD/svgdiagram.svg
```
4. Open generated svg file in your browser.


5. Generate firewall ports request
```shell
etp generate portrequest $PWD/uat-19n-3sn-topology.json $PWD/portrequest.csv
```

6. Open generated portrequest.cvs file in Excel.


## Firewall Ports Request

The etp generates a typical port request spreadsheet that you can use to submit to your Firewall/Security teams to create firewall rules. The generated file is in .csv format and can easily be opened in Excel or your preferred spreadsheet program.

Example contents can be seen on the following screenshot.

![alt port requests](docs/fwportrequest.png)



## Topology Diagram

The 'g diagram' command will generate an svg file that depicts Edge's topology.

Diagrams for example u12 and u19 topologies are:

![alt u12](docs/svgdiagram-u12.png)

![alt u19](docs/svgdiagram-u19.png)


## Check Ports functionality

The https://github.com/yuriylesyuk/edge-ops project contains two playbooks, checkports.yml and checkport-tasks.yml, that let you verify if ports on different boxes are open.

They use input configuration file in form: 

openapi-dev-ports.json:
```json
{ 
    ports: [
        { c: "10.119.3.233", s: "10.119.3.236", p: "9999"},
        { c: "10.119.3.233", s: "10.119.3.236", p: "99"}
    ]
}
```

and generate report in form: 
```json
[
    "10.119.3.233 10.119.3.236:9999: Success",
    "10.119.3.233 10.119.3.236:99 Ncat: Connection refused."
]
```

The etp utility automatically generates check ports input configuration for all firewall ports that it creates request for.

You invoke it using following command line.

TODO: right now the configuration file is hard-coded as openapi-dev-ports.json in a playbook folder, but it also is generated when running 'g portrequest' command under same name. So all it good, but to be changed later.

```shell
ansible-playbook -i "localhost," checkports.yml
```
