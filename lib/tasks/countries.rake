require 'csv'
namespace :countries do
  desc "Put the countries into the database"
  task seed_countries: :environment do

    Country.destroy_all

    CSV.foreach("lib/assets/countries.csv", :headers => true) do | row |
     Country.create!(
        name: row[0],
        code: row[1],
        lattitude: row[2],
        longitude: row[3]
      )
    end 
  end

end
