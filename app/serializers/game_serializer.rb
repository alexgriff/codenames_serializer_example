class GameSerializer < ActiveModel::Serializer
  attributes :id,:messages,:cards,:players

  has_many :messages

  # has_many :game_cards
  # has_many :cards, through: :game_cards

  # has_many :game_players
  # has_many :players, through: :game_players
  def cards
    object.game_cards.map do |gc|
      { id: gc.card.id, word: gc.card.word, identity: gc.identity }
    end
  end

  def players
    object.game_players.map do |gp|
      {id:gp.player.id, username: gp.player.username,role: gp.role }
    end 
  end 
end
