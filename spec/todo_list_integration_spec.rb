require 'todo'
require 'todo_list'

RSpec.describe "Todo List Integration" do
  context "correctly returns incomplete tasks" do
    it "1 task added, 1 task incomplete" do
      todo = Todo.new("Mop the floor")
      todo_list  = TodoList.new
      todo_list.add(todo)
      result = todo_list.incomplete
      expect(result).to eq [todo]
    end

    it "2 tasks added, 1 task incomplete" do
      todo = Todo.new("Mop the floor")
      todo_2 = Todo.new("Wipe the cabinets")
      todo_list  = TodoList.new
      todo_list.add(todo)
      todo_list.add(todo_2)
      todo.mark_done!
      result = todo_list.incomplete
      expect(result).to eq [todo_2]
    end
  end
end