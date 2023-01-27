# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Require the necessaries libraries
require "open-uri"

puts "Creating seeds..."

# Vereninaries seeds
puts "Creating Veterinaries..."
veterinary_1 = Veterinary.create(name: "4 Patitas", address: "Camino la fuente 1475")
veterinary_2 = Veterinary.create(name: "2 patitas", address: "Noruega 6444")
veterinary_3 = Veterinary.create(name: "La quinta pata del gato", address: "Juan Montalvo 75")
veterinary_4 = Veterinary.create(name: "Veterinaria Oriente", address: "Avenida las Condes 7703")
veterinary_5 = Veterinary.create(name: "SOS Buin Zoo", address: "Panamericana Sur Km 32")

puts "Veterinaries created successfully"

# Vets seeds
puts "Creating Vets..."
vet_1 = Vet.create(email: "braulio@gmail.com", password: "123123", name: "Braulio", address: "Warren Smith 67", phone_number: "77778888", specialty: "Radiografía", veterinary_id: veterinary_1.id)
vet_2 = Vet.create(email: "luis_alberto@gmail.com", password: "123123", name: "Luis", address: "Warren Smith 47", phone_number: "88889999", specialty: "Medicina General", veterinary_id: veterinary_2.id)
vet_3 = Vet.create(email: "paola@hotmail.com", password: "123123", name: "Paola", address: "Holanda 47", phone_number: "11112222", specialty: "Cirugía", veterinary_id: veterinary_3.id)
vet_4 = Vet.create(email: "claudia@hotmail.com", password: "123123", name: "Claudia", address: "Gotemburgo 67", phone_number: "12345678", specialty: "Medicina General", veterinary_id: veterinary_1.id)
vet_5 = Vet.create(email: "roberto@hotmail.com", password: "123123", name: "Roberto", address: "Oslo 330", phone_number: "11234567", specialty: "Medicina General", veterinary_id: veterinary_1.id)
vet_6 = Vet.create(email: "teresa@gmail.com", password: "123123", name: "Teresa", address: "Estocolmo 334", phone_number: "11134567", specialty: "Cirugía", veterinary_id: veterinary_1.id)
vet_7 = Vet.create(email: "nicolas@gmail.com", password: "123123", name: "Nicolas", address: "Estocolmo 257", phone_number: "11114567", specialty: "Dermatología", veterinary_id: veterinary_1.id)
vet_8 = Vet.create(email: "gregorio@gmail.com", password: "123123", name: "Gregorio", address: "Jutlandia 456", phone_number: "11111567", specialty: "Traumatología", veterinary_id: veterinary_2.id)
vet_9 = Vet.create(email: "aurora@gmail.com", password: "123123", name: "Aurora", address: "Bergen 393", phone_number: "11111167", specialty: "Radiografía", veterinary_id: veterinary_2.id)
vet_10 = Vet.create(email: "pilar@gmail.com", password: "123123", name: "Pilar", address: "Upasala 360", phone_number: "11111122", specialty: "Medicina General", veterinary_id: veterinary_2.id)
vet_11 = Vet.create(email: "domingo@gmail.com", password: "123123", name: "Domingo", address: "Los Militares 6668", phone_number: "11119999", specialty: "Cirugía", veterinary_id: veterinary_2.id)
vet_12 = Vet.create(email: "margarita@gmail.com", password: "123123", name: "Margarita", address: "Bergen 165", phone_number: "11119998", specialty: "Medicina General", veterinary_id: veterinary_3.id)
vet_13 = Vet.create(email: "juan_pablo@gmail.com", password: "123123", name: "Juan Pablo", address: "La Piedad 69", phone_number: "11119997", specialty: "Traumatología", veterinary_id: veterinary_3.id)
vet_14 = Vet.create(email: "jaime@gmail.com", password: "123123", name: "Jaime", address: "Las Trinitarias 7181", phone_number: "11119996", specialty: "Medicina General", veterinary_id: veterinary_3.id)
vet_15 = Vet.create(email: "maria@gmail.com", password: "123123", name: "Maria", address: "Las Trinitarias 7180", phone_number: "11119995", specialty: "Dermatología", veterinary_id: veterinary_3.id)
vet_16 = Vet.create(email: "jessica@gmail.com", password: "123123", name: "Jessica", address: "Las Clarisas 352", phone_number: "11119994", specialty: "Medicina General", veterinary_id: veterinary_4.id)
vet_17 = Vet.create(email: "mauricio@gmail.com", password: "123123", name: "Mauricio", address: "Los Arados 7408", phone_number: "11119993", specialty: "Medicina General", veterinary_id: veterinary_4.id)
vet_18 = Vet.create(email: "facundo@gmail.com", password: "123123", name: "Facundo", address: "Montes Claros 7474", phone_number: "11119992", specialty: "Cirugía", veterinary_id: veterinary_4.id)
vet_19 = Vet.create(email: "eugenia@gmail.com", password: "123123", name: "Eugenia", address: "La Oración 290", phone_number: "11119991", specialty: "Cirugía", veterinary_id: veterinary_4.id)
vet_20 = Vet.create(email: "natalia@gmail.com", password: "123123", name: "Natalia", address: "Rosario Norte 615", phone_number: "11119990", specialty: "Dermatología", veterinary_id: veterinary_4.id)
vet_21 = Vet.create(email: "ricardo@gmail.com", password: "123123", name: "Ricardo", address: "Pío XI 505", phone_number: "11119989", specialty: "Medicina General", veterinary_id: veterinary_5.id)
vet_22 = Vet.create(email: "emilio@gmail.com", password: "123123", name: "Emilio", address: "La Gloria 120", phone_number: "11119979", specialty: "Radiografía", veterinary_id: veterinary_5.id)
vet_23 = Vet.create(email: "valentina@gmail.com", password: "123123", name: "Valentina", address: "Los Militares 4885", phone_number: "11119969", specialty: "Radiografía", veterinary_id: veterinary_5.id)
vet_24 = Vet.create(email: "mariana@gmail.com", password: "123123", name: "Mariana", address: "Porto Alegre 68", phone_number: "11119959", specialty: "Traumatología", veterinary_id: veterinary_5.id)
vet_25 = Vet.create(email: "fernando@gmail.com", password: "123123", name: "Fernando", address: "La Castellana Norte 44 ", phone_number: "11119949", specialty: "Cirugía", veterinary_id: veterinary_5.id)
puts "Vets created successfully"

puts "Adding img to vets"
vet_1.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h30.jpg')),
                  filename: "vet_h30.jpg",
                  content_type: "image/jpg")
vet_2.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h31.jpg')),
                  filename: "vet_h31.jpg",
                  content_type: "image/jpg")
vet_3.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m30.png')),
                  filename: "vet_m30.png",
                  content_type: "image/png") #M
vet_4.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m31.jpg')),
                  filename: "vet_m31.jpg",
                  content_type: "image/jpg") #M
vet_5.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h32.jpg')),
                  filename: "vet_h32.jpg",
                  content_type: "image/jpg")
vet_6.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m32.jpg')),
                  filename: "vet_m32.jpg",
                  content_type: "image/jpg") #M
vet_7.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h33.jpg')),
                  filename: "vet_h33.jpg",
                  content_type: "image/jpg")
vet_8.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h34.jpg')),
                  filename: "vet_h34.jpg",
                  content_type: "image/jpg")
vet_9.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m33.jpg')),
                  filename: "vet_m33.jpg",
                  content_type: "image/jpg") #M
vet_10.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m34.jpg')),
                  filename: "vet_m34.jpg",
                  content_type: "image/jpg") #M
vet_11.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h35.jpg')),
                  filename: "vet_h35.jpg",
                  content_type: "image/jpg")
vet_12.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m35.jpg')),
                  filename: "vet_m35.jpg",
                  content_type: "image/jpg") #M
vet_13.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h36.jpg')),
                  filename: "vet_h36.jpg",
                  content_type: "image/jpg")
vet_14.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h37.jpg')),
                  filename: "vet_h37.jpg",
                  content_type: "image/jpg")
vet_15.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m36.jpg')),
                  filename: "vet_m36.jpg",
                  content_type: "image/jpg") #M
vet_16.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m37.jpg')),
                  filename: "vet_m37.jpg",
                  content_type: "image/jpg") #M
vet_17.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h38.jpg')),
                  filename: "vet_h38.jpg",
                  content_type: "image/jpg")
vet_18.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h42.jpg')),
                  filename: "vet_h42.jpg",
                  content_type: "image/jpg")
vet_19.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m38.jpg')),
                  filename: "vet_m38.jpg",
                  content_type: "image/jpg") #M
vet_20.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m39.jpg')),
                  filename: "vet_m39.jpg",
                  content_type: "image/jpg") #M
vet_21.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h39.jpg')),
                  filename: "vet_h39.jpg",
                  content_type: "image/jpg")
vet_22.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h40.jpg')),
                  filename: "vet_h40.jpg",
                  content_type: "image/jpg")
vet_23.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m40.jpg')),
                  filename: "vet_m40.jpg",
                  content_type: "image/jpg") #M
vet_24.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m41.jpg')),
                  filename: "vet_m41.jpg",
                  content_type: "image/jpg") #M
vet_25.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h41.jpg')),
                  filename: "vet_h41.jpg",
                  content_type: "image/jpg")
puts "Vets images attached successfully"

# AnimalTypes seeds
puts "Creating AnimalTypes..."
dog = AnimalType.create(animal_type: "Perro")
cat = AnimalType.create(animal_type: "Gato")
fish = AnimalType.create(animal_type: "Pez")
rabbit = AnimalType.create(animal_type: "Conejo")
ferret = AnimalType.create(animal_type: "Hurón")
horse = AnimalType.create(animal_type: "Caballo")
bird = AnimalType.create(animal_type: "Pajaro")
hamster = AnimalType.create(animal_type: "Hamster")
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
