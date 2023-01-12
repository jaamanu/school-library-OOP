require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person
  # getters & setters
  attr_reader :id
  attr_accessor :name, :age, :parent_permission, :rentals

  # constructor
  def initialize(id:, age:, name: 'Unknown', parent_permission: true)
    @id = id
    @id = Random.rand(1..1000) if @id.nil?
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
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

  # add rental method
  def add_rental(person)
    @rentals.push(person)
  end

  def to_s
    "Name: #{@name}, ID: #{@id}, Age: #{@age}"
  end
end
