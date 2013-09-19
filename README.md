# ForemanCustomParameters

This rails engine/plugin to Foreman leverages the existing functionality whereby parameters can defined on hosts, host groups, domains, and operating systems and read by Puppet.  The default parameters defined in /config/custom_parameters.yml are automatically added to new objects.

## Installation

Install the gem in your main app's Gemfile

```ruby
  gem "foreman_custom_parameters", :git => "git://github.com/isratrade/foreman_custom_parameters.git"
```

Create file /config/custom_parameters.yml in main app's directory which defines the defaut parameters and defeault value for each host.
The default value may be nil.  Wrap integer values in quotes to avoid errors.


```
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
