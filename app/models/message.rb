class Message < ApplicationRecord
  validates :senderEmail, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true
  validates :title, presence: true
end
