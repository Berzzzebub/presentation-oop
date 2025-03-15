module Talkable
  def say(sound = 'Bark!')
    puts self.instance_of?(Dog) ? sound : 'Meow!'
  end
end

class Quakable
  def say
    puts "Quak!"
  end
end

class Dog
  private def method_missing(name, *args)
    if name == :say
      puts "I'm a duck in a dog's body!"
    end
  end
end

class Cat
  def say(sound = "I'm a dog in a cat's body!")
    puts sound
  end
end

class Duck
  def say
    if defined?(super) then super else puts "I'm a cat in a duck's body!" end
  end
end

dog = Dog.new
cat = Cat.new
duck = Duck.new

[dog, cat, duck].each do |animal|
  puts "#{animal.class.to_s} say:"
  animal.say
end