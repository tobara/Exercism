class PhoneNumber

  def initialize(number)
    @number = number
  end

  def number
    unless @number.length == 10
      if @number.start_with? "1"
        @number[0] = ""
      end
    end
    @number.each_char { |c| @number.delete!(c) if c.ord < 48 or c.ord > 57 }
        if @number.length < 10 or @number.length > 10
      return "0" * 10
    else
      return @number
    end
  end

  def area_code
    self.number
    return @number[0..2]
  end

  def to_s
    self.number
    return "("+@number[0..2]+")"+" "+@number[3..5]+"-"+@number[6..9]
  end

end
