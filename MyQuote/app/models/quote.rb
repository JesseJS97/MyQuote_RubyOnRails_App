class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :philosopher
  has_many :quotecategories, dependent: :destroy
  has_many :categories, through: :quotecategories
end
