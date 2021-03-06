# Various Ansible Roles

![ansible-lint](https://github.com/dbist/ansible-roles/workflows/ansible-lint/badge.svg?branch=master)
![Super Linter](https://github.com/dbist/ansible-roles/workflows/Super%20Linter/badge.svg)

## ansible-roles
miscellaneous ansible roles
install with `ansible-galaxy role install -r requirements.yml`

```bash
- aervits.kerberos-server (master) is already installed, skipping.
- extracting aervits.jdk to /Users/artem/.ansible/roles/aervits.jdk
- aervits.jdk (master) was installed successfully
```

Prerequisites:

```bash
pre-commit
vagrant-hostmanager (1.8.9, global)
vagrant-persistent-storage (0.0.48, global)
vagrant-scp (0.5.7, global)
vagrant-vbguest (0.21.0, global)
```

Tested with the following:

1. ansible                                2.9.7
2. ansible-lint                           4.2.0

`pip install ansible ansible-lint`

Run `ansible-lint` manually
`ansible-lint roles/aervits.kerberos-server`

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
1. the Vagrant machine is provisioned with time not synchronized, update the role to keep time up to date.


GITHUB ACTION:
1. this repo is powered by github action for `ansible-lint`, [link](https://github.com/marketplace/actions/ansible-lint).

----------------
`vagrant ssh-config`

Host default
  HostName 127.0.0.1
  User vagrant
  Port 2222
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /Users/artem/Documents/ansible-roles/.vagrant/machines/default/virtualbox/private_key
  IdentitiesOnly yes
  LogLevel FATAL
