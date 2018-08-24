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

class Queue

  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue = [el] + @queue
  end

  def dequeue
    @queue.delete_at(-1)
  end

  def peek
    @queue[-1]
  end

end

class Map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do |subarray|
      if subarray[0] == key
        subarray[1] = value
      end
    end
    @map << [key, value]
  end

  def get(key)
    @map.each do |subarray|
      if subarray[0] == key
        return subarray[1]
      end
    end
  end

  def delete(key)
    deleted_value = nil
    @map.each do |subarray|
      if subarray[0] == key
        deleted_value = @map.delete(subarray)
      end
    end
    deleted_value
  end

  def show
    p @map
  end

end
