require 'todo'

class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todo_list << todo
  end

  def incomplete
    incomplete = []
    @todo_list.each { |todo|
      if todo.done? == false
        incomplete << todo
      end
    }
    return incomplete
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end
