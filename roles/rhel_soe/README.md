rhel8_soe
=========

rhel8_soe is the SOE for the RHEL8 environment

Example Playbook
-----------------

- hosts: all
  become: yes
  vars:
    host_domain: example.com
  tasks:
  - include_role:
      name: rhel8_soe
