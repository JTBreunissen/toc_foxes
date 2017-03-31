Event.delete_all
Sponsor.delete_all

event1 = Event.create!( { title: "Taste of code", location: "Amsterdam", spaces_available: 678, public: true, image: "https://pbs.twimg.com/media/CuzWcg2XEAAqBM2.jpg", date: 12.days.from_now } )
event1 = Event.create!( { title: "Taste of BBQ", location: "A place far far away", spaces_available: 2, public: true, image: "http://www.ondernemersscherpenzeel.nl/wp-content/uploads/2016/03/BBQ.jpg", date: 13.days.from_now  } )
event1 = Event.create!( { title: "Taste of Beerski", location: "Putins place", spaces_available: 25000000, public: false, image: "https://www.usnews.com/dims4/USNEWS/7e1968d/2147483647/thumbnail/970x647/quality/85/?url=%2Fcmsmedia%2Fea%2F5fa7faaec51f44a8b9d95515fdbdfb%2F40599FE_DA_0416_Putin_Beer.jpg", date: 14.days.from_now  } )

sponsor1 = Sponsor.create! ({
  company_name: "Codaisseur",
  logo: "https://www.codaisseur.com/assets/codaisseur-logo-long-2e9b7b7b839a33128016eb77b49ff2bb6397b6b3552523ee09273d6a5b427861.png"
  })
sponsor2 = Sponsor.create! ({
  company_name: "TQ",
  logo: "http://tasteofcode.nl/images/sponsors/tq.png"
  })
sponsor3 = Sponsor.create! ({
  company_name: "nco",
  logo: "http://tasteofcode.nl/images/sponsors/comptoir.png"
  })
sponsor4 = Sponsor.create! ({
  company_name: "Rabobank",
  logo: "http://tasteofcode.nl/images/sponsors/rabobank_long.png"
  })
sponsor5 = Sponsor.create! ({
  company_name: "tomtom",
  logo: "http://tasteofcode.nl/images/sponsors/tomtom.png"
  })
