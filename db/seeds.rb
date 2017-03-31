Event.delete_all
Sponsor.delete_all
InCompanyRequest.delete_all

event1 = Event.create!( { title: "Iguanodon", location: "Bedrock", spaces_available: 678, public: true, image: "https://goo.gl/wB6q9q" } )
event1 = Event.create!( { title: "Mosasaurus", location: "Bedrock", spaces_available: 22, public: true, image: "https://goo.gl/aoZsYt" } )
event1 = Event.create!( { title: "Hungarosaurus", location: "Bedrock", spaces_available: 150, public: false, image: "https://goo.gl/EqRlgP" } )

for i in (1..6) do
Sponsor.create ({
  company_name: Faker::Company.name,
  logo: "http://lorempixel.com/100/50/"
  })
end

icr1 = InCompanyRequest.create(
  first_name: "Frits",
  last_name: "Barend",
  company_name: "Shell",
  email: "frits@shell.com",
  date: "13-5-2017",
  spaces_available: 20,
  comments: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
  unknown printer took a galley of type and scrambled it to make a type specimen book."
)

icr2 = InCompanyRequest.create(
  first_name: "Henk",
  last_name: "Jansen",
  company_name: "AbnAmro",
  email: "henk@abnamro.com",
  date: "13-6-2017",
  spaces_available: 20,
  comments: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
  unknown printer took a galley of type and scrambled it to make a type specimen book."
)


icr3 = InCompanyRequest.create(
  first_name: "Karel",
  last_name: "Klaassen",
  company_name: "Google",
  email: "karel@gmail.com",
  date: "16-7-2017",
  spaces_available: 10,
  comments: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
  unknown printer took a galley of type and scrambled it to make a type specimen book."
)


icr4 = InCompanyRequest.create(
  first_name: "Piet",
  last_name: "Verkerk",
  company_name: "Booking",
  email: "piet@bookin.com",
  date: "13-5-2017",
  spaces_available: 30,
  comments: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
  unknown printer took a galley of type and scrambled it to make a type specimen book."
)


icr5 = InCompanyRequest.create(
  first_name: "Frits",
  last_name: "Barend",
  company_name: "Shell",
  email: "frits@shell.com",
  date: "23-8-2017",
  spaces_available: 20,
  comments: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
  unknown printer took a galley of type and scrambled it to make a type specimen book."
)
