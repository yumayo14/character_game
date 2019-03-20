# require_relative "warrior.rb"
# require_relative "status_data.rb"
#
# class Character
#   attr_reader :job
#   def initialize(job_name, sex, element, equipment)
#     @job = Object.const_get(job_name.capitalize).new(sex, element, equipment)
#   end
#
# end
#
# character = Character.new("warrior", Sex::Men, Element::Wind, Equipment::Sword)