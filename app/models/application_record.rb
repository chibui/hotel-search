class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :name, :street, :suburb, :state, presence: true
end
