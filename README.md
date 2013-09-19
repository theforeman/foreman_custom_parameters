# ForemanCustomParameters

This rails engine/plugin to Foreman leverages the existing functionality whereby parameters can defined on hosts, host groups, domains, and operating systems and read by Puppet.  The default parameters defined in config/settings.plugins.d/custom_parameters.yaml are automatically added to new objects.

## Installation

Please see the Foreman wiki for appropriate instructions:

* [Foreman: How to Install a Plugin](http://projects.theforeman.org/projects/foreman/wiki/How_to_Install_a_Plugin)

The gem name is "foreman_custom_parameters".  Run `foreman-rake db:migrate` after installation.

RPM users can install the "ruby193-rubygem-foreman_custom_parameters" or "rubygem-foreman_custom_parameters" packages.

Create file config/settings.plugins.d/custom_parameters.yaml in main app's directory which defines the defaut parameters and defeault value for each host.
The default value may be nil.  Wrap integer values in quotes to avoid errors.


```yaml
:custom_parameters:
  hosts:
    cabinet_number: '12'
    cabinet_nickname: red
```

## Update Existing Hosts

Run the following rake task to add the default parameters to existing hosts or other objects.

```
  rake db:custom_parameters:update_existing
```

## Copyright

Copyright (c) 2013 Red Hat Inc.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
