# deepsecurity-facter-puppet
Get Deep Security Agent info by facts for Puppet

Deep Security Agent Facter scripts
====

Runs the facter discovery program (https://github.com/puppetlabs/facter) on the remote system, returning JSON data containing Deep Security Agent information.

## Installation
It is best to use the custom facts in combination with the Deep Security Puppet module which can be found at https://github.com/deep-security/puppet.<br/>
<br/>
$ cd /etc/puppetlabs/code/environments/&lt;environment&gt;/modules<br/>
$ git clone https://github.com/deep-security/puppet.git<br/>
$ mv puppet deepsecurityagent<br/>
$ mkdir -p deepsecurityagent/lib/facter<br/>
$ git clone https://github.com/mawinkler/deepsecurity-facter-puppet.git<br/>
$ cp deepsecurity-facter-puppet/facter/*.rb deepsecurityagent/lib/facter<br/>
   
## Usage
Creates two different types of external facts:<br/>
dsa_status - hashmap with agent component info<br/>
dsa_component... - one external fact for each component info
