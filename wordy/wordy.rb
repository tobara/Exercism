
class WordProblem
  attr_reader :question

  def initialize(question)
    @question = question
  end

  def answer
    if too_advanced?
      raise ArgumentError.new("Sorry, Can't do that yet")
    end
    unless @answer
      @answer = x.send(operators(2), y)
      @answer = @answer.send(operators(5), z) if more?
    end

    @answer
  end

  def matches
    @matches ||= question.match(question_pattern)
  end

  def question_pattern
    operators = '(plus|minus|multiplied by|divided by)'
    /What is (-?\d+) #{operators} (-?\d+)( #{operators} (-?\d+))?\?/
  end

  def operators index
    case matches[index]
    when 'plus' then :+
    when 'minus' then :-
    when 'multiplied by' then :*
    when 'divided by' then :/
    end
  end

  def too_advanced?
    matches.nil?
  end

  def x
    matches[1].to_i
  end

  def y
    matches[3].to_i
  end

  def z
    matches[6].to_i
  end

  def more?
    !!matches[4]
  end
end

