class Series

  def initialize(digits)
    @digits = digits
    @length = digits.length
  end

  def slices(n)
    if n > @length
      raise ArgumentError
    end
      @all_slices = []
      @digits.each_char do |c|
        spot = (@digits.index(c) - 1)
        @sample_slice = []
        unless (spot + n > (@length - 1))
          n.times do
            @sample_slice << @digits[spot += 1].to_i
          end
          unless @all_slices.include?(@sample_slice)
            @all_slices << @sample_slice
          end
        end
      end
    return @all_slices
  end
end
