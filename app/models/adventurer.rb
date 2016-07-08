class Adventurer < ActiveRecord::Base
  belongs_to :gender
  belongs_to :chr_class
  belongs_to :race
  validates :name, presence: true, length: {minimum: 1, maximum: 20}
  validates :gender_id, presence: true
  validates :race_id, presence: true
  validates :chr_class_id, presence: true
end
