# The file custom_parameters.yml needs to CREATED IN THE MAIN APP (not the engine)located at /config/custom_parameters.yml
# The following constants can be used to retrieve the custom parameters
# CUSTOM_PARAMETERS['hosts']
# CUSTOM_PARAMETERS['hostgroups']
# CUSTOM_PARAMETERS['operatingsystems']
# CUSTOM_PARAMETERS['domains']

Rails.logger.info("Loading custom_parameters.yml file")
yaml_path = Rails.root.join("config", "custom_parameters.yml")
if File.exists? yaml_path
  begin
    CUSTOM_PARAMETERS = YAML.load_file(yaml_path)
  rescue
    Rails.logger.error("Check your custom_parameters.yml file")
  end
else
  Rails.logger.error("No file custom_parameters.yml found")
end
