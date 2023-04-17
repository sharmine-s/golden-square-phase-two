require 'todo'

class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list << todo
  end

  def incomplete
    incompleted = []
    @todo_list.each { |todo|
      if todo.done? == false
        incompleted << todo
      end
    }
    return incompleted
  end

  def complete
    completed = []
    @todo_list.each { |todo|
      if todo.done? == true
        completed << todo
      end
    }
    return completed
  end

  def give_up!
    @todo_list.each { |todo| todo.mark_done! }
  end
end
