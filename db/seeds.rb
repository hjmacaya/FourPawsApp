# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating seeds..."

# Vereninaries seeds
puts "Creating Veterinaries..."
veterinary_1 = Veterinary.create(name: "4 Patitas", address: "Camino la fuente 1475")
veterinary_2 = Veterinary.create(name: "2 patitas", address: "Noruega 6444")
veterinary_3 = Veterinary.create(name: "La quinta pata del gato", address: "Juan Montalvo 75")
puts "Veterinaries created successfully"

# Vets seeds
puts "Creating Vets..."
vet_1 = Vet.create(email: "primero@gmail.com", password: "123123", name: "Primero", address: "Warren Smith 67", phone_number: "77778888", specialty: "Radiologist", veterinary_id: veterinary_1.id)
vet_2 = Vet.create(email: "segundo@gmail.com", password: "123123", name: "Segundo", address: "Warren Smith 47", phone_number: "88889999", specialty: "General Medicine", veterinary_id: veterinary_2.id)
vet_3 = Vet.create(email: "tercero@hotmail.com", password: "123123", name: "Tercero", address: "Holanda 47", phone_number: "11112222", specialty: "Surgeon", veterinary_id: veterinary_3.id)
# vet_4 = Vet.create(email: "", password: "", name: "", address: "", phone_number: "", specialty: "", veterinary_id: vet_1.id)
# vet_5 = Vet.create(email: "", password: "", name: "", address: "", phone_number: "", specialty: "", veterinary_id: vet_1.id)
# vet_6 = Vet.create(email: "", password: "", name: "", address: "", phone_number: "", specialty: "", veterinary_id: vet_1.id)
puts "Vets created successfully"

# AnimalTypes seeds
puts "Creating AnimalTypes..."
dog = AnimalType.create(animal_type: "dog")
cat = AnimalType.create(animal_type: "cat")
fish = AnimalType.create(animal_type: "fish")
rabbit = AnimalType.create(animal_type: "rabbit")
ferret = AnimalType.create(animal_type: "ferret")
horse = AnimalType.create(animal_type: "horse")
bird = AnimalType.create(animal_type: "bird")
hamster = AnimalType.create(animal_type: "hamster")
puts "Animal type created successfully"

# Owners seeds
puts "Creating owners seeds..."
owner_1 = Owner.create(email: 'first@gmail.com', password: '12345678', name: 'Braulio', last_name: 'Macaya', address: 'España 12', phone_number: '11112222')
owner_2 = Owner.create(email: 'second@gmail.com', password: '12345678', name: 'Raul', last_name: 'Bianculli', address: 'Argentina 20', phone_number: '33334444')
owner_3 = Owner.create(email: 'third@gmail.com', password: '12345678', name: 'Josefina', last_name: 'Maiza', address: 'Camino la fuente 1475', phone_number: '55556666')
puts "Owners created successfully"

# Pets Seeds
puts "Creating pets seeds..."
lupe = Pet.create(name: "Lupe", birthdate: Date.new(2018, 5, 15), weight: 25, pet_chip: 12345, animal_type_id: dog.id, owner_id: owner_1.id)
bolt = Pet.create(name: "Bolt", birthdate: Date.new(2019, 5, 15), weight: 30, pet_chip: 12347, animal_type_id: dog.id, owner_id: owner_1.id)
bimba = Pet.create(name: "Bimba", birthdate: Date.new(2020, 5, 15), weight: 35, pet_chip: 12348, animal_type_id: dog.id, owner_id: owner_2.id)
agatha = Pet.create(name: "Agatha", birthdate: Date.new(2021, 5, 15), weight: 6, pet_chip: 12349, animal_type_id: cat.id, owner_id: owner_2.id)
garfield = Pet.create(name: "Garfield", birthdate: Date.new(2019, 6, 15), weight: 12, pet_chip: 12355, animal_type_id: cat.id, owner_id: owner_3.id)
pato_pez = Pet.create(name: "Pato el pez", birthdate: Date.new(2022, 5, 15), weight: 0.6, pet_chip: 12335, animal_type_id: fish.id, owner_id: owner_3.id)
puts "Pets created successfully"

# RecordType Seeds
puts "Creating record types..."
record_type_1 = RecordType.create(record_type: 'exam')
record_type_2 = RecordType.create(record_type: 'vaccine')
record_type_3 = RecordType.create(record_type: 'recipe')
puts "Record types created successfully"

# Records seeds
puts "Creating records"
rec_1 = Record.create(name: "Bimba Vaccine", observation: "Bimba had her firs vaccine", date: Date.new(2022, 12, 10), vet_id: vet_1.id, pet_id: bimba.id, record_type_id: record_type_2.id)
rec_2 = Record.create(name: "Pato el pez Exam", observation: "Pato el pez blood exam", date: Date.new(2022, 12, 3), vet_id: vet_2.id, pet_id: pato_pez.id, record_type_id: record_type_1.id)
rec_3 = Record.create(name: "Lupe recipe", observation: "Lupe had her bravecto recipe", date: Date.new(2022, 12, 5), vet_id: vet_3.id, pet_id: lupe.id, record_type_id: record_type_3.id)
puts "Records created successfully"
