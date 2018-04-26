# deepsecurity-facter
Get Deep Security Agent info by facts

Deep Security Agent Facter scripts
====

Runs the facter discovery program (https://github.com/puppetlabs/facter) on the remote system, returning JSON data that can be useful for inventory purposes.

## Installation
Clone repo to your puppet environment with the deepsecurityagent module.
   
## Usage
Creates two different types of external facts:<br/>
dsa_status - hashmap with agent component info
dsa_<component> - one external fact for each component info

#sample output
Requesting facts with ansible:<br/>

$ ansible server01.example.com -m setup -a "filter=facter_dsa_status"
server01.example.com | SUCCESS => {
    "ansible_facts": {
        "facter_dsa_status": {
            "Component.AM.cap.Qrestore": "true",
            "Component.AM.cap.realtime": "true",
            "Component.AM.cap.spyware": "false",
            "Component.AM.configurations": "5",
            "Component.AM.driverOffline": "false",
            "Component.AM.licenseExpiry": "1548802800",
            "Component.AM.mode": "on",
            "Component.AM.moduleStatus": "0",
            "Component.AM.scan.Manual": "6",
            "Component.AM.scan.Quick": "6",
            "Component.AM.scan.Realtime": "9",
            "Component.AM.scan.Scheduled": "6",
            "Component.AM.scanStatus": "4",
            "Component.AM.scanType": "0",
            "Component.CORE.version": "10.2",
            "Component.FWDPI.dpiRules": "45",
            "Component.FWDPI.driverState": "3",
            "Component.FWDPI.firewallMode": "on-prevent",
            "Component.FWDPI.firewallRules": "9",
            "Component.FWDPI.mode": "on-prevent",
            "Component.FWDPI.statefulRules": "1",
            "Component.IM.highestEntityId": "13376",
            "Component.IM.imScanType": "0",
            "Component.IM.mode": "real-time",
            "Component.IM.pendingScanBitmask": "0",
            "Component.IM.percentComplete": "0",
            "Component.IM.rules": "20",
            "Component.IM.scanStatus": "4",
            "Component.IM.scanType": "1",
            "Component.LI.decoders": "1",
            "Component.LI.mode": "on",
            "Component.LI.rules": "4",
            "Component.WRS.mode": "on"
        }
    },
    "changed": false
}

