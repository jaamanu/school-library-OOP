require_relative './spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new(55, 'programming')
  end

  describe '#new' do
    it 'receives 2 parameters (up to 5) and returns a Teacher object' do
      expect(@teacher).to be_an_instance_of Teacher
    end
  end

  describe '#age' do
    it "returns the teacher's age" do
      expect(@teacher.age).to eql 55
    end
  end

  describe '#specialization' do
    it "returns the teacher's specialization" do
      expect(@teacher.specialization).to eql 'programming'
    end
  end

  describe '#name' do
    it "returns the teacher's name" do
      expect(@teacher.name).to eql 'Unknown'
    end
  end

  describe '#id' do
    it "returns the teacher's id" do
      expect(@teacher.id.class).to eql Integer
    end
  end

  describe '#can_use_services?' do
    it 'returns if the teacher can use services' do
      expect(@teacher.can_use_services?).to eql true
    end
  end
end
