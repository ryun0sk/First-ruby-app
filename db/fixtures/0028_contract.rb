require 'csv'

csv = CSV.read('db/fixtures/csv/contract.csv', headers: true)
csv.each do |row|
  Contract.seed do |s|
    s.university_id = row['university_id']
    s.agent_id = row['agent_id']
  end
end
