require_relative 'tsv_buddy'

# Do NOT create an initialize method
class FlipFlap
  include TsvBuddy
  require 'YAML'

  def take_yaml(yml)
    @data = YAML.load(yml)
  end

  def to_yaml
    @data.to_yaml
  end
end
