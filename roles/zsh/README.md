zsh
=========

This role will configure zsh

Requirements
------------

None

Role Variables
--------------

| Var | Description |
|-----|-------------|
| vimode | sets shell to use vi mode |
| seperatehistory | User seperate history files based on tty |
| environ | This is the environment its for defaults to personal but could also be work

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: zsh }

License
-------

GPLv3

Author Information
------------------

Mitch Tuck
