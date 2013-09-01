require "foreman_custom_parameters/engine"

namespace :db do
  namespace :custom_parameters do
    desc 'Add default parameters as specified in custom_parameters.yml to existing Hosts, Hostgroups, Domains, and/or Operatingsystems.'
    task :update_existing => :environment do
      ::Host::Base.order(:id).each do |host|
        host.add_default_custom_parameters
        host.save(:validate => false)
      end
      ::Hostgroup.order(:id).each do |hostgroup|
        hostgroup.add_default_custom_parameters
        hostgroup.save(:validate => false)
      end
      ::Domain.order(:id).each do |domain|
        domain.add_default_custom_parameters
        domain.save(:validate => false)
      end
      ::Operatingsystem.order(:id).each do |os|
        os.add_default_custom_parameters
        os.save(:validate => false)
      end
      puts "Default parameters were successfully added."
    end
  end
end
