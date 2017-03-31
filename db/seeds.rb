Sponsor.delete_all

for i in (1..6) do
Sponsor.create ({
  company_name: Faker::Company.name,
  logo: "http://lorempixel.com/100/50/"
  })
end

Workshop.destroy_all

workshop1 = Workshop.create!({title: "JS", description:"Creating new TOC",image:"http://workitacademy.com/wp-content/uploads/2014/04/teacher-workshop.jpg",link_to_live_demo:"",link_to_github:""})
workshop2 = Workshop.create!({title: "Rails", description:"Creating new TOC",image:"http://workitacademy.com/wp-content/uploads/2014/04/teacher-workshop.jpg",link_to_live_demo:"",link_to_github:""})
workshop3 = Workshop.create!({title: "CSS", description:"Creating new TOC",image:"http://workitacademy.com/wp-content/uploads/2014/04/teacher-workshop.jpg",link_to_live_demo:"",link_to_github:""})
workshop4 = Workshop.create!({title: "Ruby", description:"Creating new TOC",image:"http://workitacademy.com/wp-content/uploads/2014/04/teacher-workshop.jpg",link_to_live_demo:"",link_to_github:""})
