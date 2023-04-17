require 'todo'

RSpec.describe Todo do
  it "checks if a completed task is done" do
    todo = Todo.new("Mop the floor")
    todo.mark_done!
    result = todo.done?
    expect(result).to eq true
  end

  it "checks if an uncompleted task is not done" do
    todo = Todo.new("Wipe cabinets")
    result = todo.done?
    expect(result).to eq false
  end
end