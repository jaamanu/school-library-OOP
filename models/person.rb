require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  # getters & setters
  attr_reader :id
  attr_accessor :name, :age

  # constructor
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # private method
  def of_age?
    @age >= 18
  end
  private :of_age?

  # public method
  def can_use_services?
    of_age? || @parent_permission
  end

  # correct the person name method
  def correct_name
    @name
  end
end
