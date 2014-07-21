# ansible-packerio

Manage installation of the latest stable version of packer.io.


# Role variables

* ``packerio_mirror``: Configure a mirror where to download packer.io from. (default: ``http://dl.bintray.com/mitchellh/packer/``)
* ``packerio_version``: Configure a version which to download from packer.io. (default: ``0.6.1``)
* ``packerio_bin_path``: Configure the path where the packer.io binares are linked into the system PATH. (default: ``/usr/local/bin``)


# Dependencies

None.


# Example playbook

    - hosts: image_builders
      roles:
        - { role: packerio }


# License

Apache Version 2.0


# Author

Mark Kusch @mark.kusch silpion.de


<!-- vim: set ts=4 sw=4 et nofen: -->
