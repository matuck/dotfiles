bash
=========

This role will configure bash

Requirements
------------

None

Role Variables
--------------

| Var | Description |
|-----|-------------|
| vimode | sets shell to use vi mode |
| seperatehistory | User seperate history files based on tty |

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: bash }

License
-------

GPLv3

Author Information
------------------

Mitch Tuck
