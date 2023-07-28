git
=========

Install and configure get

Requirements
------------

None

Role Variables
--------------

| Var    | description |
|--------|-------------|
| gitname | The name for git commits |
| gitemail | The email to use for git commits |
| gitdefaultBranch | The default branch to use defauts to main |
| gitexcludesFile | The global excludes file defaults to ~/.gitignore |
| gitgpgSign | Defaults to false |
| gitsigningkey | The keyid to use |

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: git, gitname: "john doe", gitemail: "someone@somewhere.com", gitgpgSign: true, gitsigningkey: "ABCDEF12345" }
    - hosts: servers
      roles:
         - { role: git, gitname: "john doe", gitemail: "someone@somewhere.com" }

License
-------

GPLv3

Author Information
------------------

Mitch Tuck
