class Object
  # Returning
  # =========
  #  
  # Returning is a RubyOnRails idiom that provides a closure around the common
  # accumulator temp variable pattern.
  def returning(accumulator)
    yield accumulator
    accumulator
  end
end

class Category
  def number; rand(100); end
end

# AccumulatingCategory
# Implements #display_name using an accumulator temp variable.
class AccumulatingCategory < Category
  def title; "Accumulating Sucks"; end
  
  def display_name
    ret = ""
    ret << number.to_s if number
    ret << " - #{title}" if title
    ret
  end
end
AccumulatingCategory.new.display_name # => "91 - Accumulating Sucks"

# ReturningCategory
# Implements #display_name using the returning pattern.
class ReturningCategory < Category
  def title; "Returning Rules"; end

  def display_name
    returning "" do |ret|
      ret << number.to_s if number
      ret << " - #{title}" if title
    end
  end
end
ReturningCategory.new.display_name # => "50 - Returning Rules"
