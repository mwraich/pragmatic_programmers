class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end
# p = Parent.new
# p.say_hello

class Child < Parent
end

# c = Child.new
# c.say_hello
#
# puts Child.superclass
# puts Parent.superclass
# puts Object.superclass
# puts BasicObject.superclass.inspect

class Person
  include Comparable
  attr_reader :name

  def initialize(name)
      @name = name
  end

  def to_s
    "Person named #{@name}"
  end

  def <=>(other)
    self.name <=> other.name
  end
end
p1 = Person.new("Matz")
p2 = Person.new("Guido")
p3 = Person.new("Larry")

if p1 > p2
  puts "#{p1.name}'s name > #{p2.name}'s name"
end

puts "Sorted List:"
puts [p1, p2, p3].sort

# p = Person.new("Meep")
# puts p
