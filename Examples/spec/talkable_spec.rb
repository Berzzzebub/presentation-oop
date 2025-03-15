# spec/talkable_spec.rb
require 'rspec'
require_relative '../talkable'

RSpec.describe Dog do
  it 'says "Bark!"' do
    expect { Dog.new.say }.to output("Bark!\n").to_stdout
  end
end

RSpec.describe Cat do
  it 'says "Meow!"' do
    expect { Cat.new.say }.to output("Meow!\n").to_stdout
  end
end

RSpec.describe Duck do
  it 'says "Quak!"' do
    expect { Duck.new.say }.to output("Quak!\n").to_stdout
  end
end