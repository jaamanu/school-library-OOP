require_relative './spec_helper'

describe TrimmerDecorator do
  describe '#correct_name' do
    it "trimmer the person's name to <= 10 characters" do
      @huge_name_person = Person.new(15, 'A person with a huge name')
      @person = Person.new(16, 'Name')
      @huge_name_trimmer_decorator = TrimmerDecorator.new(@huge_name_person)
      @trimmer_decorator = TrimmerDecorator.new(@person)

      expect(@huge_name_trimmer_decorator.correct_name).to eql 'A person w'
      expect(@trimmer_decorator.correct_name).to eql 'Name'
    end
  end
end
