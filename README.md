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

#sample output
Requesting facts with ansible:<br/>

$ ansible server01.example.com -m setup -a "filter=facter_dsa_status"<br/>
server01.example.com | SUCCESS => {<br/>
    "ansible_facts": {<br/>
        "facter_dsa_status": {<br/>
            "Component.AM.cap.Qrestore": "true",<br/>
            "Component.AM.cap.realtime": "true",<br/>
            "Component.AM.cap.spyware": "false",<br/>
            "Component.AM.configurations": "5",<br/>
            "Component.AM.driverOffline": "false",<br/>
            "Component.AM.licenseExpiry": "1548802800",<br/>
            "Component.AM.mode": "on",<br/>
            "Component.AM.moduleStatus": "0",<br/>
            "Component.AM.scan.Manual": "6",<br/>
            "Component.AM.scan.Quick": "6",<br/>
            "Component.AM.scan.Realtime": "9",<br/>
            "Component.AM.scan.Scheduled": "6",<br/>
            "Component.AM.scanStatus": "4",<br/>
            "Component.AM.scanType": "0",<br/>
            "Component.CORE.version": "10.2",<br/>
            "Component.FWDPI.dpiRules": "45",<br/>
            "Component.FWDPI.driverState": "3",<br/>
            "Component.FWDPI.firewallMode": "on-prevent",<br/>
            "Component.FWDPI.firewallRules": "9",<br/>
            "Component.FWDPI.mode": "on-prevent",<br/>
            "Component.FWDPI.statefulRules": "1",<br/>
            "Component.IM.highestEntityId": "13376",<br/>
            "Component.IM.imScanType": "0",<br/>
            "Component.IM.mode": "real-time",<br/>
            "Component.IM.pendingScanBitmask": "0",<br/>
            "Component.IM.percentComplete": "0",<br/>
            "Component.IM.rules": "20",<br/>
            "Component.IM.scanStatus": "4",<br/>
            "Component.IM.scanType": "1",<br/>
            "Component.LI.decoders": "1",<br/>
            "Component.LI.mode": "on",<br/>
            "Component.LI.rules": "4",<br/>
            "Component.WRS.mode": "on"<br/>
        }<br/>
    },<br/>
    "changed": false<br/>
}

