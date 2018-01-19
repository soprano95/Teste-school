json.extract! region, :id, :region_name, :region_name_short, :position, :code, :latitude, :longitude, :created_at, :updated_at
json.url region_url(region, format: :json)
