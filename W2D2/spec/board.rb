require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13
      @cups[idx] += [:stone] * 4
    end
  end

  def valid_move?(start_pos)
    if start_pos > 13 || start_pos < 0
      raise ("Invalid starting cup")
    elsif @cups[start_pos].empty?
      raise("Starting cup is empty")
    end
    true
  end

  def make_move(start_pos, current_player_name)
    @current_player_name = current_player_name
    stones = @cups[start_pos]
    if start_pos < 6
      @opponent_cup = 13
      @my_cup = 6
    else
      @opponent_cup = 6
      @my_cup = 13
    end
    @cups[start_pos] = []
    idx = start_pos
    until stones.empty?
      idx = (idx + 1) % (@cups.length - 1)
      @cups[idx] << stones.shift unless idx == @opponent_cup
    end
    render
    return next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    if @cups[ending_cup_idx] == []
      return :swith
    elsif @cups[ending_cup_idx] == @my_cup
      return :prompt
    elsif @cups[ending_cup_idx].length > 1
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    one_side = @cups[0..5]
    other_side = @cups[7...-1]
    return true if one_side.all? {|cup| cup.empty?}
    return true if other_side.all? {|cup| cup.empty?}
    return false
  end

  def winner
    # debugger
    return :draw if @cups[6] == @cups[13]
    return @name1 if @cups[6].length == 6
    return @name2 if @cups[13].length == 6
  end
end

class InvalidStartingCupError < StandardError
end

class StartingCupEmptyError < StandardError
end
