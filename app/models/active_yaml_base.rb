class ActiveYamlBase < ActiveYaml::Base
  set_root_path "#{Rails.root}/config"
end