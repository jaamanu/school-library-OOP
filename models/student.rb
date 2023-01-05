require_relative 'person'

class Student < Person
  # getters & setters
  attr_accessor :classroom

  # constructor
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  # method
  def play_hooky
    '¯\(ツ)/¯'
  end
end
