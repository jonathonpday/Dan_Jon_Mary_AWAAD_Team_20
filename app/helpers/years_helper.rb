module YearsHelper
    def map_country(country)
        "https://maps.googleapis.com/maps/apistaticmap?center=#{country}&size=500x500&zoom0"
    end
end
