require_relative './spec_helper'

describe Student do
  before :each do
    @student = Student.new(15, 'Gabriel', 'programming')
  end

  describe '#new' do
    it 'receives 1 parameter (up to 5) and returns a Student object' do
      expect(@student).to be_an_instance_of Student
    end
  end

  describe '#age' do
    it "returns the student's age" do
      expect(@student.age).to eql 15
    end
  end

  describe '#name' do
    it "returns the student's name" do
      expect(@student.name).to eql 'Gabriel'
    end
  end

  describe '#classroom' do
    it "returns the student's classroom" do
      expect(@student.classroom).to eql 'programming'
    end
  end

  describe '#id' do
    it "returns the student's id" do
      expect(@student.id.class).to eql Integer
    end
  end

  describe '#parent_permission' do
    it 'returns if the student has parent permission' do
      expect(@student.parent_permission).to eql true
    end
  end

  describe '#play_hooky' do
    it 'returns the student playing hooky' do
      expect(@student.play_hooky).to eql '¯\(ツ)/¯'
    end
  end
end