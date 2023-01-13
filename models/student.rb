require_relative './person'
# Students' information/actions in the library.
class Student < Person
  attr_accessor :classroom

  def initialize(age, name = 'Unknown', classroom = 'None', id = Random.rand(1..1000), parent_permission: true)
    super(age, name, id, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
