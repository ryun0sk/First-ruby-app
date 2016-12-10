require 'csv'

csv = CSV.read('db/fixtures/csv/agent.csv', headers: true)
csv.each do |row|
  Agent.seed do |s|
    s.id = row['id']
    s.name = row['name']
    s.adress = row['adress']
    s.tel = row['tel']
  end
end
