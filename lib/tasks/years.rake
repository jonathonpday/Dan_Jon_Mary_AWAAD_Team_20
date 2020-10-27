require 'csv'
namespace :years do
  desc "Put the year GDP growth into the database"
  task seed_years: :environment do

    @name = Country.select(["name"])
    objects_arr = []
    for names in @name
      objects_arr << names
    end 

    names_arr = objects_arr.map { |x| x.name } 
    
    CSV.foreach("lib/assets/years.csv", :headers => true) do | row |
      puts row.inspect #just so that we know the file's being read
      temp_name = names_arr.shift
      country = Country.where(["name = ?", temp_name])
      country = country[0]
      puts "country: " + country.id.to_s
      Year.create!(
        country_id: country.id,
        YR2000: row[0].to_d,
        YR2001: row[1].to_d,
        YR2002: row[2].to_d,
        YR2003: row[3].to_d,
        YR2004: row[4].to_d,
        YR2005: row[5].to_d,
        YR2006: row[6].to_d,
        YR2007: row[7].to_d,
        YR2008: row[8].to_d,
        YR2009: row[9].to_d,
        YR2010: row[10].to_d,
        YR2011: row[11].to_d,
        YR2012: row[12].to_d,
        YR2013: row[13].to_d,
        YR2014: row[14].to_d,
        YR2015: row[15].to_d,
        YR2016: row[16].to_d,
        YR2017: row[17].to_d,
        YR2018: row[18].to_d,
        YR2019: row[19].to_d
      )
    end 
  end
end
