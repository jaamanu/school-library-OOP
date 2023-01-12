require_relative './spec_helper'
describe CapitalizeDecorator do
  describe '#correct_name' do
    it "capitalizes the person's name" do
      @person = Person.new(15, 'nAME')
      @capitalize_decorator = CapitalizeDecorator.new(@person)

      expect(@capitalize_decorator.correct_name).to eql 'Name'
    end
  end
end