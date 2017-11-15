class Website < ApplicationRecord
  belongs_to :matthew
  validates :content, length: { maximum: 140 },
                      presence: true
end
