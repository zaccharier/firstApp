json.array!(@weatherforecasts) do |weatherforecast|
  json.extract! weatherforecast, :id, :office_id, :temperature, :humidity_level, :sunlight, :date
  json.url weatherforecast_url(weatherforecast, format: :json)
end
