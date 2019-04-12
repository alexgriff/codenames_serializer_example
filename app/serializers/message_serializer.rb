class MessageSerializer < ActiveModel::Serializer
  attributes :text
  belongs_to :game
end
