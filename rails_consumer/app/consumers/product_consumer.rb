class ProductConsumer < ApplicationConsumer
  def consume
    messages.each do |message|
      Rails.logger.info("ProductConsumer consuming Topic: #{topic.name}, Message: #{message.payload}")
    end
  end
end
