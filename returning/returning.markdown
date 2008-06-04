Returning
=========

Returning is a [RubyOnRails][1] idiom that provides a closure around the common accumulator temp variable pattern. Typical use is as such:

    returning "" do |accumulator|
      accumulator << "<span>"
      accumulator << "This is some text"
      accumulator << "</span>
    end


  [1]: http://rubyonrails.org
