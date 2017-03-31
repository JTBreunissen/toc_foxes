Event.delete_all
Sponsor.delete_all
InCompanyRequest.delete_all

event1 = Event.create!( { title: "Taste of code", location: "Amsterdam", spaces_available: 678, public: true, image: "https://pbs.twimg.com/media/CuzWcg2XEAAqBM2.jpg", date: 12.days.from_now } )
event1 = Event.create!( { title: "Taste of BBQ", location: "A place far far away", spaces_available: 2, public: true, image: "http://www.ondernemersscherpenzeel.nl/wp-content/uploads/2016/03/BBQ.jpg", date: 13.days.from_now  } )
event1 = Event.create!( { title: "Taste of Beerski", location: "Putins place", spaces_available: 25000000, public: false, image: "https://www.usnews.com/dims4/USNEWS/7e1968d/2147483647/thumbnail/970x647/quality/85/?url=%2Fcmsmedia%2Fea%2F5fa7faaec51f44a8b9d95515fdbdfb%2F40599FE_DA_0416_Putin_Beer.jpg", date: 14.days.from_now  } )

sponsor1 = Sponsor.create! ({
  company_name: "Codaisseur",
  logo: "https://pbs.twimg.com/profile_images/679634619998842880/L9Y-i7rM.jpg"
  })
sponsor2 = Sponsor.create! ({
  company_name: "TQ",
  logo: "http://tasteofcode.nl/images/sponsors/tq.png"
  })
sponsor3 = Sponsor.create! ({
  company_name: "Le comptoir de l'innovation",
  logo: "https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAeuAAAAJGY4ZWEwYjk3LWFjMjUtNGE3Ni04Zjc3LWYwOTlhNzM5NDA5Zg.png"
  })
sponsor4 = Sponsor.create! ({
  company_name: "Rabobank",
  logo: "https://pbs.twimg.com/profile_images/492216223656980480/Ilok7Xou.png"
  })
sponsor5 = Sponsor.create! ({
  company_name: "TomTom",
  logo: "http://nl.pcmweb.s3-eu-west-1.amazonaws.com/thumbnails/256x256/615dc/tomtom-logo.png"
  })



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
