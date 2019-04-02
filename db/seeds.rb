hikes = [
  {
    id: 1,
    name: "Lake 22",
    length_miles: 5.4,
    elevation_gain_feet: 1350,
    max_elevation_feet: 2400,
    rating: 4,
  },
  {
    id: 2,
    name: "Annette Lake",
    length_miles: 7.5,
    elevation_gain_feet: 1800,
    max_elevation_feet: 3600,
    rating: 3,
  },
  {
    id: 4,
    name: "Mount Si",
    length_miles: 8.0,
    elevation_gain_feet: 3150,
    max_elevation_feet: 3900,
    rating: 3,
  },
  {
    id: 5,
    name: "Loowit Trail",
    length_miles: 28.0,
    elevation_gain_feet: 6000,
    max_elevation_feet: 4800,
    rating: 5,
  },
  {
    id: 7,
    name: "Mount Townsend",
    length_miles: 8.0,
    elevation_gain_feet: 3010,
    max_elevation_feet: 6260,
    rating: 2,
  },
  {
    id: 12,
    name: "Mount Teneriffe",
    length_miles: 13.8,
    elevation_gain_feet: 3800,
    max_elevation_feet: 4788,
    rating: 4,
  },
  {
    id: 13,
    name: "Teneriffe Falls",
    length_miles: 5.4,
    elevation_gain_feet: 1585,
    max_elevation_feet: 2370,
    rating: 4,
  },
]

# Clear existing Hikes
Hike.destroy_all

# Create our hikes
hikes.each do |hike|
  Hike.create! hike
end

# Reset primary keys
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
