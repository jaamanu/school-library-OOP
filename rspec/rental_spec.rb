require_relative './spec_helper'

describe Rental do
  before :each do
    @book = Book.new('Title', 'Author')
    @person = Person.new(15)
    @rental = Rental.new('08-30-2022', @book, @person)
  end

  describe '#new' do
    it 'receives three parameters and returns a Rental object' do
      expect(@rental).to be_an_instance_of Rental
    end
  end

  describe '#date' do
    it 'returns the rental date' do
      expect(@rental.date).to eql '08-30-2022'
    end
  end

  describe '#book' do
    it 'returns the rented book' do
      expect(@rental.book).to eql @book
    end
  end

  describe '#person' do
    it "returns the rental's owner" do
      expect(@rental.person).to eql @person
    end
  end
end