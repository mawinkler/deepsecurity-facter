# deepsecurity-facter
Get Deep Security Agent info by facts

Deep Security Agent Facter scripts
====

Runs the facter discovery program (https://github.com/puppetlabs/facter) on the remote system, returning JSON data that can be useful for inventory purposes.

## Installation
Clone repo to your puppet environment with the deepsecurityagent module.
   
## Usage
Creates two different types of external facts:<br/>
dsa_status - hashmap with agent component info<br/>
dsa_component... - one external fact for each component info
