class UserValidator < ActiveModel::Validator
  def validate(record)
    unless record.email.include? '@' && record.email.include? '.'
      record.errors[:name] << 'Email address must have @ and .'
    end
  end
end

class User < ActiveRecord::Base
  has_secure_password

  include ActiveModel::Validations
  validates_with UserValidator

  validates_presence_of :password on: :create
  validates :password, length: {in: 6..2}

  validates :email, confirmation: true
  validates :email, uniqueness: { case_sensitive: false }

end
