class CardSerializer < ActiveModel::Serializer
  attributes :id, :word, :identity

  has_many :game_cards
  has_many :games, through: :game_cards

  def identity
    
    # object.game_cards
  end 
end
