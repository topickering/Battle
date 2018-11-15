class Attack

  attr_reader :damage

  def initialize
    @damage = 0
  end

  def standard_attack
    @damage = rand(5..10)
  end

  def high_risk
    @damage = [0, 0, 0, 1, 2, 13, 15].sample
  end

  def sleep_attack
    @damage = rand(1..4)
  end

end
