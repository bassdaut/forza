class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  enum :role, { trainer: 0, trainee: 1 }, default: :trainer

  validates :name, :surname, :role, presence: true
end
