require_relative './stack'

class MyQueue
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(v)
    if @s1.empty?
      @s1.push(v)
    else
      @s2.push(v)
    end
  end

  def remove
    if @s1.empty?
      until @s2.empty? do
        @s1.push(@s2.pop)
      end
    end
    @s1.pop
  end

  def peek
    if @s1.empty?
      @s2.peek
    end
    @s1.peek
  end
end
