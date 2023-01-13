require_relative './spec_helper'
describe Classroom do
  before :each do
    @classroom = Classroom.new('class_label')
  end

  describe '#new' do
    it 'takes one parameter and returns a Classroom object ' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  describe '#label' do
    it "return the classroom's label" do
      expect(@classroom.label).to eql 'class_label'
    end
  end

  describe '#add_student' do
    it "adds a student to the student's array" do
      student = Student.new(15)
      student2 = Student.new(16)

      @classroom.add_student(student)
      @classroom.add_student(student2)

      expect(@classroom.students[0]).to eql student
      expect(@classroom.students[1]).to eql student2
    end
  end
end
