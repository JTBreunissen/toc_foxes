Event.delete_all
Sponsor.delete_all

event1 = Event.create!( { title: "Iguanodon", location: "Bedrock", spaces_available: 678, public: true, image: "https://goo.gl/wB6q9q" } )
event1 = Event.create!( { title: "Mosasaurus", location: "Bedrock", spaces_available: 22, public: true, image: "https://goo.gl/aoZsYt" } )
event1 = Event.create!( { title: "Hungarosaurus", location: "Bedrock", spaces_available: 150, public: false, image: "https://goo.gl/EqRlgP" } )

for i in (1..6) do
Sponsor.create ({
  company_name: Faker::Company.name,
  logo: "http://lorempixel.com/100/50/"
  })
end
