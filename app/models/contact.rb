class Contact < ApplicationRecord
    validates :full_name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :mobile_number, presence: true, numericality: { only_integer: true }, length: { minimum: 10, maximum: 15 }
    validates :message, presence: true
    validates :term_condition, inclusion: { in: [true], message: 'must be accepted' }
end
