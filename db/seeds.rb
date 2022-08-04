# This will delete any existing rows from the City and Listing tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting listing/agent"
Listing.destroy_all
Agent.destroy_all


puts "Creating agents..."
linda = Agent.create(first_name:"Linda", last_name: "Lemon" , rating: 10,agent_fee: "3%", agency:"Lemon Living")

bello = Agent.create(first_name:"Bello", last_name: "Beet" , rating: 9,agent_fee: "3%", agency:"Off the Beeten Path")

martin = Agent.create(first_name:"Martin", last_name: "Mushroom" , rating: 8,agent_fee: "3.5%", agency:"Portobello")

dolores = Agent.create(first_name:"Dolores", last_name: "Daikon" , rating: 7,agent_fee: "3%", agency:"Daikon Icons")

peter = Agent.create(first_name:"Peter", last_name: "Pickle" , rating: 6,agent_fee: "4%", agency:"The Agency")



puts "Creating cities..."
nyc = City.create(name: "New York", state: "New York")

dal = City.create(name: "Dallas", state: "Texas")

phl = City.create(name: "Philadelphia", state: "Pennsylvania")

jax = City.create(name: "Jacksonville", state: "Florida")

la = City.create(name: "Los Angeles", state: "California")



puts "Creating listings..."
nyc1 = Listing.create(addy: "1127 Flatbush Ave APT 3D, Brooklyn, NY 11226", picture_url: "https://photos.zillowstatic.com/fp/4e165dfac973b6ca779cf3bb9dd5589c-o_a.webp", bed: 1, bath: 1,zipcode: 11226,built: 2005, to_buy: false, to_rent: true,laundry: true,price: 2506,sqrft: 729,superintendent: false,city_id: nyc.id,agent_id: linda.id)

nyc2 = Listing.create(addy: "352 Bowery #PENTHOUSE, New York, NY 10012", picture_url: "https://photos.zillowstatic.com/fp/062bf24b8ba3172c9a68e083786f886e-cc_ft_384.webp", bed: 3, bath: 2,zipcode: 10012,built: 1920, to_buy: false, to_rent: true,laundry: true,price: 12500,sqrft: 1800,superintendent: true,city_id: nyc.id,agent_id: linda.id)

nyc3 = Listing.create(addy: "107-51 156th Street, Jamaica, NY 11433", picture_url: "https://photos.zillowstatic.com/fp/823cef533c3a46f38feacfa98765c7a5-uncropped_scaled_within_1344_1008.webp", bed: 3, bath: 2,zipcode: 11433,built: 1920, to_buy: true, to_rent: false,laundry: true,price: 799000,sqrft: 2500,superintendent: false,city_id: nyc.id,agent_id: linda.id)

nyc4 = Listing.create(addy: "1210 Evergreen Ave #44, Bronx, NY 10472", picture_url: "https://photos.zillowstatic.com/fp/663e49fb13b4b38a3ab0a351e297c1e8-cc_ft_1152.webp", bed: 2, bath: 1,zipcode: 10472,built: 1913, to_buy: true, to_rent: false,laundry: true,price: 299000,sqrft: 1100,superintendent: true,city_id: nyc.id,agent_id: linda.id)

dal1 = Listing.create(addy: "5218 McCommas Blvd, Dallas, TX 75206", picture_url: "https://photos.zillowstatic.com/fp/7727ad250f61ae4d02a28f224caabe6d-cc_ft_1152.webp", bed: 5, bath: 4,zipcode: 75206,built: 1950, to_buy: true, to_rent: false,laundry: true,price: 1400000,sqrft: 3461,superintendent: false,city_id: dal.id,agent_id: bello.id)

dal2 = Listing.create(addy: "4122 Travis St UNIT 7, Dallas, TX 75204", picture_url: "https://photos.zillowstatic.com/fp/57725dff047865b8e7e261dc6a3b8046-o_a.webp", bed: 2, bath: 3,zipcode: 75204,built: 1997, to_buy: true, to_rent: false,laundry: true,price: 425000,sqrft: 1405,superintendent: false,city_id: dal.id,agent_id: bello.id)

dal3 = Listing.create(addy: "3030 Elizabeth St UNIT 528, Dallas, TX 75204", picture_url: "https://photos.zillowstatic.com/fp/c45844bd2247ebe658fa79ccb3a6c84a-o_a.webp", bed: 1, bath: 1,zipcode: 75204,built: 2016, to_buy: false, to_rent: true,laundry: true,price: 1720,sqrft: 730,superintendent: true,city_id: dal.id,agent_id: bello.id)

dal4 = Listing.create(addy: "3011 Aster St, Dallas, TX 75211", picture_url: "https://maps.googleapis.com/maps/api/streetview?location=3011+Aster+St%2C+Dallas%2C+TX+75211&size=768x576&key=AIzaSyARFMLB1na-BBWf7_R3-5YOQQaHqEJf6RQ&source=outdoor&&signature=wBgp2Ss6oTLR8NFgwyTprt1JHGk=", bed: 3, bath: 2,zipcode: 75211,built: 1942, to_buy: false, to_rent: true,laundry: true,price: 1500,sqrft: 1296,superintendent: false,city_id: dal.id,agent_id: bello.id)

phl1 = Listing.create(addy: "1302 N Lawrence St, Philadelphia, PA 19122", picture_url: "https://ap.rdcpix.com/a2d50d64fbc5fb13f7b3ffa0a47faa4bl-m965288982xd-w300_h300_q80.jpg", bed: 3, bath: 2,zipcode: 19122,built: 1915, to_buy: false, to_rent: true,laundry: true,price: 2350,sqrft: 1584,superintendent:false,city_id: phl.id,agent_id: martin.id)

phl2 = Listing.create(addy: "1587 E Hewson St, Philadelphia, PA 19125", picture_url: "https://photos.zillowstatic.com/fp/b0362743680dcae6dad79f57efce8151-o_a.webp", bed: 2, bath: 1,zipcode: 19125,built: 1936, to_buy: false, to_rent: true,laundry: false,price: 1850,sqrft: 800,superintendent: false,city_id: phl.id,agent_id: martin.id)

phl3 = Listing.create(addy: "1504 W Thompson St, Philadelphia, PA 19121", picture_url: "https://photos.zillowstatic.com/fp/2f24cebb937d3aacaf11c9adbbbfa6d7-o_a.webp", bed: 3, bath: 2,zipcode: 19121,built: 1982, to_buy: true, to_rent: false,laundry: false,price: 2999999,sqrft: 1280,superintendent: false,city_id: phl.id,agent_id: martin.id)

phl4 = Listing.create(addy: "1009 Clinton St APT 5, Philadelphia, PA 19107", picture_url: "https://photos.zillowstatic.com/fp/09af14c7ff649105c16f27a15f8eb31b-o_a.webp", bed: 2, bath: 2,zipcode: 19107,built: 1900, to_buy: true, to_rent: false,laundry: true,price: 389000,sqrft: 1220,superintendent: false,city_id: phl.id,agent_id: martin.id)

jax1 = Listing.create(addy: "2134 SHEPARD ST, Jacksonville, FL 32211", picture_url: "https://photos.zillowstatic.com/fp/e3054ad8f8a272967c9fc48f5d38db2d-o_a.webp", bed: 3, bath: 4,zipcode: 32211,built: 1998, to_buy: true, to_rent: false,laundry: true,price: 2690000,sqrft: 2904,superintendent: false,city_id: jax.id,agent_id: peter.id)

jax2 = Listing.create(addy: "1804 Shelton RD, Jacksonville, FL 32211", picture_url: "https://photos.zillowstatic.com/fp/6cdb38eafb39858acad03066d2f4a81a-cc_ft_1152.webp", bed: 3, bath: 1,zipcode: 32211,built: 1954, to_buy: true, to_rent: false,laundry: true,price: 259000,sqrft: 1344,superintendent: false,city_id: jax.id,agent_id: peter.id)

jax3 = Listing.create(addy: "1203 GRANDVIEW DR, Jacksonville, FL 32211", picture_url: "https://photos.zillowstatic.com/fp/8d7a3bcee468320c2c11b113a62d67d6-o_a.webp", bed: 5, bath: 4,zipcode: 32211,built: 1961, to_buy: true, to_rent: false,laundry: true,price: 730000,sqrft: 3461,superintendent: false,city_id: jax.id,agent_id: peter.id)

jax4 = Listing.create(addy: "2801 N Market St, Jacksonville, FL 32206", picture_url: "https://photos.zillowstatic.com/fp/bc8a27c2d6f035e0dbe42047bcad4368-o_a.webp", bed: 1, bath: 1,zipcode: 32206,built: 1901, to_buy: false, to_rent: true,laundry: true,price: 999,sqrft: 750,superintendent: false,city_id: jax.id,agent_id: peter.id)

la1 = Listing.create(addy: "5781 Corbett St #5781, Los Angeles, CA 90016", picture_url: "https://photos.zillowstatic.com/fp/a2998495d47983b40fe6ac24bcda7815-o_a.webp", bed: 2, bath: 1,zipcode: 90016,built: 1948, to_buy: false, to_rent: true,laundry: true,price: 2900,sqrft: 900,superintendent: false,city_id: la.id,agent_id: dolores.id)

la2 = Listing.create(addy: "594 S Mapleton Dr, Los Angeles, CA 90024", picture_url: "https://photos.zillowstatic.com/fp/b82b804bb89696124e660dee8b664180-o_a.webp", bed: 14, bath: 27,zipcode: 90024,built: 1990, to_buy: true, to_rent: false,laundry: true,price: 165000000,sqrft: 56500,superintendent: false,city_id: la.id,agent_id: dolores.id)

la3 = Listing.create(addy: "6611 S Victoria Ave #8, Los Angeles, CA 90043", picture_url: "https://photos.zillowstatic.com/fp/576f8963450a7b002e81d320338d7e8f-o_a.webp", bed: 1, bath: 1,zipcode: 90043,built: 1964, to_buy: false, to_rent: true,laundry: true,price: 1942,sqrft: 760,superintendent: false,city_id: la.id,agent_id: dolores.id)

la4 = Listing.create(addy: "1004 W 65th St #1, Los Angeles, CA 90044", picture_url: "https://photos.zillowstatic.com/fp/73a65b33b8969626c07c7d1de2942c49-o_a.webp", bed: 0, bath: 1,zipcode: 90044,built: 1994, to_buy: false, to_rent: true,laundry: false,price: 1295,sqrft: 350,superintendent: false,city_id: la.id,agent_id: dolores.id)


puts "Seeding done!"