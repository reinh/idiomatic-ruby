class Category
  def display_name
    returning "" do |ret|
      ret << number.to_s
      ret << " - #{title}" if title
    end
  end
end
