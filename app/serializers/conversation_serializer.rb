class ConversationSerializer < ActiveModel::Serializer
  attributes %i[id title]
  has_many :messages
end
