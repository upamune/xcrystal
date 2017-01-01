class Acronym
  def self.abbreviate(str : String) : String
    str.split(/-|\s|(?<=[A-Z])(?=[A-Z][a-z])|(?<=[a-z])(?=[A-Z])/).map(&.[0].upcase).join
  end
end
