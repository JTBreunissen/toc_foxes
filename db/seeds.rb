Sponsor.delete_all

for i in (1..6) do
Sponsor.create ({
  company_name: Faker::Company.name,
  logo: "http://lorempixel.com/100/50/"
  })
end
