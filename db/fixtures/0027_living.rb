require 'csv'

csv = CSV.read('db/fixtures/csv/living.csv', headers: true)
csv.each do |row|
  Living.seed do |s|
    s.university_id = row['university_id']
    s.residence_id = row['residence_id']
  end
end
