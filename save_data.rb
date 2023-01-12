def save_data(books, students, teachers)
  Dir.mkdir('data') unless File.exist?('./data')

  save_books(books)
  save_students(students)
  save_teachers(teachers)
end

def save_books(books)
  books_data = []

  books.each do |book|
    rentals = []
    unless book.rentals.empty?
      book.rentals.each do |rental|
        rentals.push({ date: rental.date, person_id: rental.person.id })
      end
    end

    books_data.push({
                      title: book.title,
                      author: book.author,
                      rentals: rentals
                    })
  end

  update_file('books', books_data)
end

def save_students(students)
  students_data = []

  students.each do |student|
    students_data.push({
                         name: student.name,
                         age: student.age,
                         classroom: student.classroom,
                         parent_permission: student.parent_permission,
                         id: student.id
                       })
  end

  update_file('students', students_data)
end

def save_teachers(teachers)
  teachers_data = []

  teachers.each do |teacher|
    teachers_data.push({
                         name: teacher.name,
                         age: teacher.age,
                         specialization: teacher.specialization,
                         parent_permission: teacher.parent_permission,
                         id: teacher.id
                       })
  end

  update_file('teachers', teachers_data)
end

def update_file(name, object)
  file = "./data/#{name}.json"
  File.new(file, 'w+') unless File.exist?(file)
  File.write(file, object.to_json)
end
