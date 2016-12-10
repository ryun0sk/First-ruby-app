require 'csv'

csv = CSV.read('db/fixtures/csv/university.csv', headers: true)
csv.each do |row|
  University.seed do |s|
    s.id = row['id']
    s.name = row['name']
    s.country_id = row['country_id']
    s.language_id = row['language_id']
    s.image = row['image']
  end
end
