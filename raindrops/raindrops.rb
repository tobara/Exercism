module BookKeeping
  VERSION = 3
end


class Raindrops

  def self.convert(num)
    if num == 1
      return 1.to_s
    end
    output = ""
    factors = (1..num).select { |n| num % n == 0 }
    if factors.include?(3)
      output = "Pling"
    end
    if factors.include?(5)
      output = output + "Plang"
    end
    if factors.include?(7)
      output = output + "Plong"
    end
    if output == ""
      return num.to_s
    else
      return output
    end
  end
end
