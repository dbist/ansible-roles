# ansible-roles
miscellaneous ansible roles

roles can be imported from multiple sources, as per Chapter 6, Ansible for DevOps, page 129

```yml
--- 
# From Ansible Galaxy, latest version. 
- src: geerlingguy.firewall

# From Ansible Galaxy, specifying the version. 
- src: geerlingguy.php 
  version: 3.5.1

# From GitHub, with a custom name and version. 
- src: https://github.com/geerlingguy/ansible-role-passenger 
  name: passenger 
  version: 1.2.0

# From a web server, with a custom name.
- src: https://www.example.com/ansible/roles/my-role-name.tar.gz
  name: my-role
```

To install the roles defined in a requirements file, use the command `ansible-galaxy install -r requirements.yml. For more documentation on Ansible requirements files, see the official documentation: [Installing Multiple Roles From a File](https://galaxy.ansible.com/docs/using/installing.html#installing-multiple-roles-from-a-file).

`ansible -i inventory.yml dev -a "hostname"`

TODO:
1. the Vagrant machine is provisioned with time not synchronized, update the role to keep time up to date

