class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  enum :role, { trainer: 0, trainee: 1 }, default: :trainer

  has_many :routines, foreign_key: "trainee_id"
  has_many :managed_routines, class_name: "Routine", foreign_key: "trainer_id"

  validates :name, :surname, :role, presence: true
end
