class Stack

  attr_reader :stack

  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def pop
    last_el = @stack[-1]
    @stack.delete_at(-1)
  end

  def peek
    @stack[-1]
  end

end
