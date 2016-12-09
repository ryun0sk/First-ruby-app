require 'csv'

csv = CSV.read('db/fixtures/csv/language.csv', headers: true)
csv.each do |row|
  Language.seed do |s|
    s.id = row['id']
    s.name = row['name']
  end
end
