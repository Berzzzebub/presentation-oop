# artists_brush_set.rb

module ArtistsBrushSet
  # ANSI codes for colors and reset formatting
  COLORS = {
    red:     "\e[31m",
    green:   "\e[32m",
    yellow:  "\e[33m",
    blue:    "\e[34m",
    magenta: "\e[35m",
    cyan:    "\e[36m",
    reset:   "\e[0m"
  }

  # Method for printing red text
  def red(text)
    "#{COLORS[:red]}#{text}#{COLORS[:reset]}"
  end

  # Method for printing green text
  def green(text)
    "#{COLORS[:green]}#{text}#{COLORS[:reset]}"
  end

  # Method for printing yellow text
  def yellow(text)
    "#{COLORS[:yellow]}#{text}#{COLORS[:reset]}"
  end

  # Method for printing blue text
  def blue(text)
    "#{COLORS[:blue]}#{text}#{COLORS[:reset]}"
  end

  # Method for printing magenta text
  def magenta(text)
    "#{COLORS[:magenta]}#{text}#{COLORS[:reset]}"
  end

  # Method for printing cyan text
  def cyan(text)
    "#{COLORS[:cyan]}#{text}#{COLORS[:reset]}"
  end

  # General method to print text in a specified color
  def colorize(text, color)
    color_code = COLORS[color] || ""
    "#{color_code}#{text}#{COLORS[:reset]}"
  end
end

# Example class using the ArtistsBrushSet module
class Painter
  # Including the module — now module methods become instance methods of Painter
  include ArtistsBrushSet

  # Method demonstrating the use of different "brushes" (colors)
  def demonstrate_brushes
    puts red("This text is painted with a red brush!")
    puts green("This text is painted with a green brush!")
    puts yellow("This text is painted with a yellow brush!")
    puts blue("This text is painted with a blue brush!")
    puts magenta("This text is painted with a magenta brush!")
    puts cyan("This text is painted with a cyan brush!")
  end

  # Method demonstrating a flexible approach: choose a color dynamically
  def demonstrate_custom(text, color)
    puts colorize(text, color)
  end
end

# Example usage of the module through the Painter class

painter = Painter.new
painter.demonstrate_brushes
painter.demonstrate_custom("Custom colored text in red!", :red)

