
module BookKeeping
  VERSION = 3
end


class Hamming

  def self.compute(x, y)

    @x = x
    @y = y
    if @x.nil?
      return 0
    end
    if @x.length != @y.length
      raise ArgumentError
    end
    ham = 0
    cnt = 0
    @x.each_char do |i|
      if i != @y[cnt]
        ham += 1
      end
        cnt += 1
    end
    return ham
  end
end



