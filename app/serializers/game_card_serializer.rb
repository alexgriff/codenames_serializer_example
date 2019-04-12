class GameCardSerializer < ActiveModel::Serializer
  attributes :identity
  belongs_to :card

  # def id
  #   object.card;id


end
