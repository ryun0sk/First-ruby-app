require 'csv'

csv = CSV.read('db/fixtures/csv/residence.csv', headers: true)
csv.each do |row|
  Residence.seed do |s|
    s.id = row['id']
    s.name = row['name']
  end
end
