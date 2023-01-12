require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  # constructor
  def initialize(age:, specialization:, id: nil, name: 'Unknown', parent_permission: true)
    super(id: id, name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  # public method
  def can_use_services?
    true
  end

  def to_s
    "[Teacher] #{super}"
  end
end
