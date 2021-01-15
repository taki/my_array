# frozen_string_literal: true

class MyArray
  include Enumerable

  private_class_method :new

  class << self
    def [](*element)
      @element = element
    end
  end

  def [](i)
    @element[i]
  end

  def each(&block)
    return to_enum unless block_given?

    @element.each(&block)

    self
  end
end
