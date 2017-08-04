#!/usr/bin/env python
import argparse
import json

ANSIBLE_INV = {
    "monitor": {
        "hosts": ["10.1.200.101", "10.0.50.205"],
        #"vars": {
        #    "core1": {"corename":"core1","hostip":"10.1.200.101","bossname":"boss1","path":"/home/mlink/esmscore1","timestart":"00","timestart":"24","frequency":"1","mailto":"yfding@mail.etonenet.com;baseding@qq.com"},
        #    "core2": {"corename":"core2","hostip":"10.1.50.205","bossname":"boss2","path":"/home/mlink/esmscore2","timestart":"00","timestart":"24","frequency":"1","mailto":"yfding@mail.etonenet.com;baseding@qq.com"},
        #}
    },
    'ceph': {
        'hosts': ["10.1.0.171", "10.1.0.172","10.1.0.175"],
        'vars': {"path":"/root/.monitor/ceph_log"
        }
    },
    'switch': {
        'hosts': ['127.0.0.1'],
        'vars': {'test': 'Null'}
    },
} 

HOST_VARS = {
    "10.0.50.205": {"eapi_port": 22},
    "10.1.200.101": {"eapi_port": 22},
} 

def output_list_inventory(json_output):
    print json.dumps(json_output) 

def find_host(search_host, inventory):
    host_attribs = inventory.get(search_host, {})
    print json.dumps(host_attribs) 

def main():

    # Argument parsing
    parser = argparse.ArgumentParser(description="Ansible dynamic inventory")
    parser.add_argument("--list", help="Ansible inventory of all of the groups",
        action="store_true", dest="list_inventory")
    parser.add_argument("--host",
        help="Ansible inventory of a particular host", action="store",
        dest="ansible_host", type=str)

    cli_args = parser.parse_args()
    list_inventory = cli_args.list_inventory
    ansible_host = cli_args.ansible_host

    #print list_inventory
    #print ansible_host

    if list_inventory:
        output_list_inventory(ANSIBLE_INV)

    if ansible_host:
        find_host(ansible_host, HOST_VARS)


if __name__ == "__main__":
    main() 
