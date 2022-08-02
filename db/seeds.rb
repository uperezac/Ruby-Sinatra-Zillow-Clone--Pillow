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
nyc1 = Listing.create(addy: "1127 Flatbush Ave APT 3D, Brooklyn, NY 11226",bed: 1, bath: 1,zipcode: 11226,built: 2005, to_buy: false, to_rent: true,laundry: true,price: 2506,sqrft: 729,super: false,city_id: nyc.id,agent_id: linda.id)

nyc2 = Listing.create(addy: "352 Bowery #PENTHOUSE, New York, NY 10012",bed: 3, bath: 2,zipcode: 10012,built: 1920, to_buy: false, to_rent: true,laundry: true,price: 12500,sqrft: 1800,super: true,city_id: nyc.id,agent_id: linda.id)

nyc3 = Listing.create(addy: "107-51 156th Street, Jamaica, NY 11433",bed: 3, bath: 2,zipcode: 11433,built: 1920, to_buy: true, to_rent: false,laundry: true,price: 799000,sqrft: 2500,super: false,city_id: nyc.id,agent_id: linda.id)

nyc4 = Listing.create(addy: "1210 Evergreen Ave #44, Bronx, NY 10472",bed: 2, bath: 1,zipcode: 10472,built: 1913, to_buy: true, to_rent: false,laundry: true,price: 299000,sqrft: 1100,super: true,city_id: nyc.id,agent_id: linda.id)

dal1 = Listing.create(addy: "5218 McCommas Blvd, Dallas, TX 75206",bed: 5, bath: 4,zipcode: 75206,built: 1950, to_buy: true, to_rent: false,laundry: true,price: 1400000,sqrft: 3461,super: false,city_id: dal.id,agent_id: bello.id)

dal2 = Listing.create(addy: "4122 Travis St UNIT 7, Dallas, TX 75204",bed: 2, bath: 3,zipcode: 75204,built: 1997, to_buy: true, to_rent: false,laundry: true,price: 425000,sqrft: 1405,super: false,city_id: dal.id,agent_id: bello.id)

dal3 = Listing.create(addy: "3030 Elizabeth St UNIT 528, Dallas, TX 75204",bed: 1, bath: 1,zipcode: 75204,built: 2016, to_buy: false, to_rent: true,laundry: true,price: 1720,sqrft: 730,super: true,city_id: dal.id,agent_id: bello.id)

dal4 = Listing.create(addy: "3011 Aster St, Dallas, TX 75211",bed: 3, bath: 2,zipcode: 75211,built: 1942, to_buy: false, to_rent: true,laundry: true,price: 1500,sqrft: 1296,super: false,city_id: dal.id,agent_id: bello.id)

phl1 = Listing.create(addy: "1302 N Lawrence St, Philadelphia, PA 19122",bed: 3, bath: 2,zipcode: 19122,built: 1915, to_buy: false, to_rent: true,laundry: true,price: 2350,sqrft: 1584,super:false,city_id: phl.id,agent_id: martin.id)

phl2 = Listing.create(addy: "1587 E Hewson St, Philadelphia, PA 19125",bed: 2, bath: 1,zipcode: 19125,built: 1936, to_buy: false, to_rent: true,laundry: false,price: 1850,sqrft: 800,super: false,city_id: phl.id,agent_id: martin.id)

phl3 = Listing.create(addy: "1504 W Thompson St, Philadelphia, PA 19121",bed: 3, bath: 2,zipcode: 19121,built: 1982, to_buy: true, to_rent: false,laundry: false,price: 2999999,sqrft: 1280,super: false,city_id: phl.id,agent_id: martin.id)

phl4 = Listing.create(addy: "1009 Clinton St APT 5, Philadelphia, PA 19107",bed: 2, bath: 2,zipcode: 19107,built: 1900, to_buy: true, to_rent: false,laundry: true,price: 389000,sqrft: 1220,super: false,city_id: phl.id,agent_id: martin.id)

jax1 = Listing.create(addy: "2134 SHEPARD ST, Jacksonville, FL 32211",bed: 3, bath: 4,zipcode: 32211,built: 1998, to_buy: true, to_rent: false,laundry: true,price: 2690000,sqrft: 2904,super: false,city_id: jax.id,agent_id: peter.id)

jax2 = Listing.create(addy: "1804 Shelton RD, Jacksonville, FL 32211",bed: 3, bath: 1,zipcode: 32211,built: 1954, to_buy: true, to_rent: false,laundry: true,price: 259000,sqrft: 1344,super: false,city_id: jax.id,agent_id: peter.id)

jax3 = Listing.create(addy: "1203 GRANDVIEW DR, Jacksonville, FL 32211",bed: 5, bath: 4,zipcode: 32211,built: 1961, to_buy: true, to_rent: false,laundry: true,price: 730000,sqrft: 3461,super: false,city_id: jax.id,agent_id: peter.id)

jax4 = Listing.create(addy: "2801 N Market St, Jacksonville, FL 32206",bed: 1, bath: 1,zipcode: 32206,built: 1901, to_buy: false, to_rent: true,laundry: true,price: 999,sqrft: 750,super: false,city_id: jax.id,agent_id: peter.id)

la1 = Listing.create(addy: "5781 Corbett St #5781, Los Angeles, CA 90016",bed: 2, bath: 1,zipcode: 90016,built: 1948, to_buy: false, to_rent: true,laundry: true,price: 2900,sqrft: 900,super: false,city_id: la.id,agent_id: dolores.id)

la2 = Listing.create(addy: "594 S Mapleton Dr, Los Angeles, CA 90024",bed: 14, bath: 27,zipcode: 90024,built: 1990, to_buy: true, to_rent: false,laundry: true,price: 165000000,sqrft: 56500,super: false,city_id: la.id,agent_id: dolores.id)

la3 = Listing.create(addy: "6611 S Victoria Ave #8, Los Angeles, CA 90043",bed: 1, bath: 1,zipcode: 90043,built: 1964, to_buy: false, to_rent: true,laundry: true,price: 1942,sqrft: 760,super: false,city_id: la.id,agent_id: dolores.id)

la4 = Listing.create(addy: "1004 W 65th St #1, Los Angeles, CA 90044",bed: 0, bath: 1,zipcode: 90044,built: 1994, to_buy: false, to_rent: true,laundry: false,price: 1295,sqrft: 350,super: false,city_id: la.id,agent_id: dolores.id)


puts "Seeding done!"