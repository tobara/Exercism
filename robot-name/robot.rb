module BookKeeping
  VERSION = 2
end

class Robot

  Taken_names = {}

  def name
    @name ||= new_name
  end

  def new_name
    @name = (0...2).map { (65 + rand(2)).chr }.join
    3.times { @name << rand(10).to_s }
    if Taken_names[@name]
      new_name
    else
      Taken_names[@name] = true
      @name
    end
  end

  def reset
    @name = nil
  end
end




