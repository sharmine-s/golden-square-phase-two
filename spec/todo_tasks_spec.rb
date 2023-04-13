require 'todo_tasks'

RSpec.describe "string_is_a_todo" do
  it "checks whether the inputted string is a TODO item" do
    result = string_is_a_todo("TODO: laundry")
    expect(result).to eq true
  end

  it "checks if a string that doesn't contain TODO is false" do
    result = string_is_a_todo("wash the dishes")
    expect(result).to eq false
  end

  it "checks if a string that doesn't contain TODO is false" do
    result = string_is_a_todo("todo: change sheets")
    expect(result).to eq false
  end

  context "throws error if string inputted is not of type String" do
    it "fails" do
      expect { string_is_a_todo(6) }.to raise_error "Inputted string should be of type String"
    end
  end
end