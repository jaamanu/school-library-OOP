require_relative 'person'

class Student < Person
  # getters & setters
  attr_reader :classroom

  # constructor
  def initialize(age:, classroom:, id: nil, name: 'Unknown', parent_permission: true)
    super(id: id, name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  # method
  def play_hooky
    '¯\(ツ)/¯'
  end

  # add classroom method
  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def to_s
    "[Student] #{super}"
  end
end
