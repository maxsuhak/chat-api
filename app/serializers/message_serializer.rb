class MessageSerializer < ActiveModel::Serializer
  attributes %i[id conversation_id text created_at]
end
