json.array!(@offices) do |office|
  json.extract! office, :id, :name, :contact, :adress, :number_of_employees
  json.url office_url(office, format: :json)
end
