module ForemanCustomParameters
  module AddDefaults
    extend ActiveSupport::Concern

    included do
      after_initialize :add_default_custom_parameters
    end

    def add_default_custom_parameters
      unless self.send(parameters_method).map(&:name).any? { |name| CUSTOM_PARAMETERS[parameters_type].include?(name) }
        CUSTOM_PARAMETERS[parameters_type].each do |k, v|
          self.send(parameters_method).build(:name => k, :value => v)
        end
      end
    end

    def parameters_type
      self.kind_of?(Host::Base) ? 'hosts' : self.class.name.downcase.pluralize
    end

    def parameters_method
      if self.kind_of?(Host::Base)
        :host_parameters
      elsif self.kind_of?(Hostgroup)
        :group_parameters
      elsif self.kind_of?(Operatingsystem)
        :os_parameters
      elsif self.kind_of?(Domain)
        :domain_parameters
      end
    end

  end
end
