class Game
  DEFAULT_ATTACK = 10

  attr_reader :player_1, :player_2, :current_target, :current_player

  def initialize(player_1, player_2)
    @attack_value = DEFAULT_ATTACK
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack
    switch
    @current_target.hitpoints -= @attack_value
  end

  def switch
    @current_target = [@player_1, @player_2].sample
    assign_current_player
  end

  def assign_current_player
    if @current_target == @player_2
      @current_player = @player_1
    else
      @current_player = @player_2
    end
  end

end
