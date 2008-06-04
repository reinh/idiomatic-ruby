class Category
  def display_name
    ret = ""
    ret << number.to_s
    ret << " - #{title}" if title
    ret
  end
end
