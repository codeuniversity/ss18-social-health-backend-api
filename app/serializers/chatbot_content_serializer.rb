class ChatbotContentSerializer < ActiveModel::Serializer
  attributes :id, :chatbot_content_primary, :chatbot_content_secondary, :chatbot_content_cemplexity
end
