class Adventurer < ActiveRecord::Base
  belongs_to :gender
  belongs_to :chr_class
  belongs_to :race
end
