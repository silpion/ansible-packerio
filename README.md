# ansible-packerio

Manage installation of the latest stable version of packer.io.

## Requirements

None.

## Role Variables

* ``packerio_mirror``: Configure a mirror where to download packer.io from. (default: ``http://dl.bintray.com/mitchellh/packer/``)
* ``packerio_version``: Configure a version which to download from packer.io. (default: ``0.7.1``)
* ``packerio_bin_path``: Configure the path where the packer.io binares are linked into the system PATH. (default: ``/usr/local/bin``)

## Dependencies

None.

## Example Playbook

    - hosts: all
      roles:
         - { role: ansible-packerio }

## License

Apache Version 2.0

## Integration testing

This role provides integration tests using the Ruby RSpec/serverspec framework
with a few drawbacks at the time of writing this documentation.

- Currently supports ansible_os_family == 'Debian' only.

Running integration tests requires a number of dependencies being
installed. As this role uses Ruby RSpec there is the need to have
Ruby with rake and bundler available.

    # install role specific dependencies with bundler
    bundle install

<!-- -->

    # run the complete test suite with Docker
    rake suite

<!-- -->

    # run the complete test suite with Vagrant
    RAKE_ANSIBLE_USE_VAGRANT=1 rake suite


## Author information

Mark Kusch @mark.kusch silpion.de


<!-- vim: set nofen ts=4 sw=4 et: -->
