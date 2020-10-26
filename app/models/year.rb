class Year < ApplicationRecord
  belongs_to :country

  def self.search(term)
    if term
      country_name = Country.where(['name LIKE ?', "%#{term}%"])
      if country_name
        self.where(country_id: country_name.ids)
      else
        @years = Year.all
      end
    else
      @years = Year.all
    end
  end
end
