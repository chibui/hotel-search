class Hotel < ApplicationRecord

  geocoded_by :full_street_address # can also be an IP address
  after_validation :geocode # auto-fetch coordinates

  def full_street_address
    [street, suburb, state, postcode, country].compact.join(',')
  end

  def self.search(search)
    where("name LIKE ?, suburb LIKE ?","%#{search}%, %#{search}%")
  end
end
