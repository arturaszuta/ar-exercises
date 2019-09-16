class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates_inclusion_of :hourly_rate, :in => 40..100
  belongs_to :store
end

