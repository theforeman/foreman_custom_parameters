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
