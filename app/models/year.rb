class Year < ApplicationRecord
  belongs_to :country

  def self.search(term)
    if term
      country_name = Country.find_by(name: term)
      if country_name
        self.where(country_id: country_name.id)
      else
        @years = Year.all
      end
    else
      @years = Year.all
    end
  end
end
