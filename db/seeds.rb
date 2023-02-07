# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ClientProvider.destroy_all
Journal.destroy_all
Client.destroy_all
Provider.destroy_all

Client.create!([
  {
    first_name: 'Luke',
    last_name: 'Skywalker',
    email: 'luke@jedi.com',
  },
  {
    first_name: 'Darth',
    last_name: 'Vader',
    email: 'dv@sith.com',
  },
  {
    first_name: 'Han',
    last_name: 'Solo',
    email: 'scruffy_looking_nerfherder@kesselrun.com',
  },
])

Provider.create!([
  {
    company_name: 'The Resistance',
    email: 'help@resistance.com',
  },
  {
    company_name: 'The Empire',
    email: 'help@empire.com',
  },
])

luke = Client.where(email: 'luke@jedi.com').first
vader = Client.where(email: 'dv@sith.com').first
solo = Client.where(email: 'scruffy_looking_nerfherder@kesselrun.com').first
resistance = Provider.where(email: 'help@resistance.com').first
empire = Provider.where(email: 'help@empire.com').first

Journal.create!([
  {
    client_id: luke.id,
    entry: 'I have been injured; He cut off my hand!',
    posted_at: DateTime.now - 1.days,
  },
  {
    client_id: vader.id,
    entry: 'I struck him down, but now he is more powerful that I can possible imagine.  I need therapy',
    posted_at: DateTime.now - 4.months,
  },
  {
    client_id: vader.id,
    entry: 'You don\'t know the power of the dark side.',
    posted_at: DateTime.now + 2.months,
  },
])

ClientProvider.create!([
  {
    client_id: luke.id,
    provider_id: resistance.id,
    plan_type: 'basic',
  },
  {
    client_id: vader.id,
    provider_id: empire.id,
    plan_type: 'premium',
  },
  {
    client_id: solo.id,
    provider_id: resistance.id,
    plan_type: 'basic',
  },
  {
    client_id: solo.id,
    provider_id: empire.id,
    plan_type: 'basic',
  },
])
