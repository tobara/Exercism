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
    if @value[-1, 1] == '1'
      @secret_handshake << 'wink'
    end
    if @value[-2] == '1'
      @secret_handshake << 'double blink'
    end
    if @value[-3] == '1'
      @secret_handshake << 'close your eyes'
    end
    if @value[-4] == '1'
      @secret_handshake << 'jump'
    end
    if @value[-5] == '1'
      @secret_handshake.reverse!
    end
    @secret_handshake
  end


end




