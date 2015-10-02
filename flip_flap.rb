require_relative 'tsv_buddy'

class FlipFlap
    include TsvBuddy
    require "YAML"
    def take_yaml(yml)
        @data = YAML.load(yml)
    end
    def to_yaml
        return @data.to_yaml
    end
    # Do NOT create an initialize method   
end
