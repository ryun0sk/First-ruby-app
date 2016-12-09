require 'csv'

csv = CSV.read('db/fixtures/csv/country.csv', headers: true)
csv.each do |row|
  Country.seed do |s|
    s.id = row['id']
    s.name = row['name']
  end
end
