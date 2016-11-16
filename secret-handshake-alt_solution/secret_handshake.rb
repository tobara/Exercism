
class SecretHandshake

  def initialize(value)
    @value = value
  end

  def commands
    if @value.is_a? String
      return []
    end
    @value = @value.to_s(2)
    self.handshakes
  end

  def handshakes
    @secret_handshake = []
    n = 0
    while (n >= -4)
      n -= 1
      @secret_handshake << case [n, @value[n]]
        when [-1, '1'] then 'wink'
        when [-2, '1'] then 'double blink'
        when [-3, '1'] then 'close your eyes'
        when [-4, '1'] then 'jump'
      end
    end
    @secret_handshake.compact!
    if @value[-5] == '1'
         @secret_handshake.reverse!
    end
    @secret_handshake
  end
end

