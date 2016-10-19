class Language < ApplicationRecord
  has_many :phrases
  belongs_to :user
end
