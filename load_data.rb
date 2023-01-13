require './models/book'
require './models/teacher'
require './models/student'
require './models/rental'
require 'json'

def load_data
  students = load_students
  teachers = load_teachers
  books = load_books(students, teachers)

  [books, students, teachers]
end

def load_books(students, teachers)
  books = []
  people = students + teachers

  return books unless File.exist?('./data/books.json')

  books_data = JSON.parse(File.read('./data/books.json'))

  unless books_data.empty?
    books_data.each do |book|
      new_book = Book.new(book['title'], book['author'])
      create_rentals(new_book, book['rentals'], people)
      books.push(new_book)
    end
  end

  books
end

def create_rentals(book, rentals, people)
  return if rentals.empty?

  rentals.each do |rental|
    people.each do |person|
      next unless rental['person_id'] == person.id

      new_rental = Rental.new(rental['date'], book, person)
      book.add_rental(new_rental)
      person.add_rental(new_rental)
    end
  end
end

def load_teachers
  teachers = []

  return teachers unless File.exist?('./data/teachers.json')

  teachers_data = JSON.parse(File.read('./data/teachers.json'))

  unless teachers_data.empty?
    teachers_data.each do |teacher|
      teachers.push(Teacher.new(teacher['age'], teacher['specialization'], teacher['name'], teacher['id'],
                                parent_permission: teacher['parent_permission']))
    end
  end

  teachers
end

def load_students
  students = []

  return students unless File.exist?('./data/students.json')

  students_data = JSON.parse(File.read('./data/students.json'))

  unless students_data.empty?
    students_data.each do |student|
      students.push(Student.new(student['age'], student['name'], student['classroom'], student['id'],
                                parent_permission: student['parent_permission']))
    end
  end

  students
end
