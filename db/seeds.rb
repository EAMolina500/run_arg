# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Crear usuarios

User.create([
  { name: "John Doe", email: "john.doe@example.com" },
  { name: "Jane Smith", email: "jane.smith@example.com" },
  { name: "Emily Johnson", email: "emily.johnson@example.com" },
  { name: "Michael Brown", email: "michael.brown@example.com" },
  { name: "Sarah Davis", email: "sarah.davis@example.com" }
])

# Crear organizaciones
Organization.create([
  { name: "Global Running Organization", user_id: User.first.id },
  { name: "British Running Club", user_id: User.first.id },
  { name: "Canadian Running Federation", user_id: User.first.id },
  { name: "Australian Athletics Association", user_id: User.second.id },
  { name: "New Zealand Running Network", user_id: User.second.id }
])

# Crear corredores
Runner.create([
  { user_id: User.first.id },
  { user_id: User.second.id },
  { user_id: User.third.id },
  { user_id: User.fourth.id },
  { user_id: User.fifth.id }
])

# Crear eventos
Event.create([
  { name: "New York Marathon", date: "2024-10-05", location: "New York, USA", organization_id: Organization.first.id },
  { name: "London Half Marathon", date: "2024-11-10", location: "London, UK", organization_id: Organization.second.id },
  { name: "Toronto 10K", date: "2024-12-01", location: "Toronto, Canada", organization_id: Organization.third.id },
  { name: "Sydney Fun Run", date: "2024-12-15", location: "Sydney, Australia", organization_id: Organization.fourth.id },
  { name: "Auckland Relay Race", date: "2024-12-20", location: "Auckland, New Zealand", organization_id: Organization.fifth.id }
])

Race.create([
  { name: "New York Marathon", event_id: Event.first.id, distance: "42" },
  { name: "London Half Marathon", event_id: Event.first.id, distance: "21"  },
  { name: "Toronto 10K", event_id: Event.first.id, distance: "10"  },
  { name: "Sydney Fun Run", event_id: Event.first.id, distance: "5"  },
  { name: "Auckland Relay Race", event_id: Event.first.id, distance: "21"  }
])

# Crear resultados de carreras
RaceResult.create([
  { runner_id: Runner.first.id, race_id: Race.first.id, position: 1, time: "02:30:15" },
  { runner_id: Runner.second.id, race_id: Race.second.id, position: 3, time: "01:15:30" },
  { runner_id: Runner.third.id, race_id: Race.third.id, position: 2, time: "00:45:45" },
  { runner_id: Runner.fourth.id, race_id: Race.fourth.id, position: 4, time: "00:55:20" },
  { runner_id: Runner.fifth.id, race_id: Race.fifth.id, position: 5, time: "01:05:55" }
])
