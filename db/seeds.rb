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

# Vets of Veterinary 1
vet_1 = Vet.create(email: "braulio@gmail.com", password: "123123", name: "Braulio", address: "Warren Smith 67", phone_number: "77778888", specialty: "Radiografía", veterinary_id: veterinary_1.id)
vet_4 = Vet.create(email: "claudia@hotmail.com", password: "123123", name: "Claudia", address: "Gotemburgo 67", phone_number: "12345678", specialty: "Medicina General", veterinary_id: veterinary_1.id)
vet_5 = Vet.create(email: "roberto@hotmail.com", password: "123123", name: "Roberto", address: "Oslo 330", phone_number: "11234567", specialty: "Medicina General", veterinary_id: veterinary_1.id)
vet_6 = Vet.create(email: "teresa@gmail.com", password: "123123", name: "Teresa", address: "Estocolmo 334", phone_number: "11134567", specialty: "Cirugía", veterinary_id: veterinary_1.id)
vet_7 = Vet.create(email: "nicolas@gmail.com", password: "123123", name: "Nicolas", address: "Estocolmo 257", phone_number: "11114567", specialty: "Dermatología", veterinary_id: veterinary_1.id)

# Vets of Veterinary 2
vet_2 = Vet.create(email: "luis_alberto@gmail.com", password: "123123", name: "Luis", address: "Warren Smith 47", phone_number: "88889999", specialty: "Medicina General", veterinary_id: veterinary_2.id)
vet_8 = Vet.create(email: "gregorio@gmail.com", password: "123123", name: "Gregorio", address: "Jutlandia 456", phone_number: "11111567", specialty: "Traumatología", veterinary_id: veterinary_2.id)
vet_9 = Vet.create(email: "aurora@gmail.com", password: "123123", name: "Aurora", address: "Bergen 393", phone_number: "11111167", specialty: "Radiografía", veterinary_id: veterinary_2.id)
vet_10 = Vet.create(email: "pilar@gmail.com", password: "123123", name: "Pilar", address: "Upasala 360", phone_number: "11111122", specialty: "Medicina General", veterinary_id: veterinary_2.id)
vet_11 = Vet.create(email: "domingo@gmail.com", password: "123123", name: "Domingo", address: "Los Militares 6668", phone_number: "11119999", specialty: "Cirugía", veterinary_id: veterinary_2.id)

# Vets of Veterinary 3
vet_3 = Vet.create(email: "paola@hotmail.com", password: "123123", name: "Paola", address: "Holanda 47", phone_number: "11112222", specialty: "Cirugía", veterinary_id: veterinary_3.id)
vet_12 = Vet.create(email: "margarita@gmail.com", password: "123123", name: "Margarita", address: "Bergen 165", phone_number: "11119998", specialty: "Medicina General", veterinary_id: veterinary_3.id)
vet_13 = Vet.create(email: "juan_pablo@gmail.com", password: "123123", name: "Juan Pablo", address: "La Piedad 69", phone_number: "11119997", specialty: "Traumatología", veterinary_id: veterinary_3.id)
vet_14 = Vet.create(email: "jaime@gmail.com", password: "123123", name: "Jaime", address: "Las Trinitarias 7181", phone_number: "11119996", specialty: "Medicina General", veterinary_id: veterinary_3.id)
vet_15 = Vet.create(email: "maria@gmail.com", password: "123123", name: "Maria", address: "Las Trinitarias 7180", phone_number: "11119995", specialty: "Dermatología", veterinary_id: veterinary_3.id)

# Vets of Veterinary 4
vet_16 = Vet.create(email: "jessica@gmail.com", password: "123123", name: "Jessica", address: "Las Clarisas 352", phone_number: "11119994", specialty: "Medicina General", veterinary_id: veterinary_4.id)
vet_17 = Vet.create(email: "mauricio@gmail.com", password: "123123", name: "Mauricio", address: "Los Arados 7408", phone_number: "11119993", specialty: "Medicina General", veterinary_id: veterinary_4.id)
vet_18 = Vet.create(email: "facundo@gmail.com", password: "123123", name: "Facundo", address: "Montes Claros 7474", phone_number: "11119992", specialty: "Cirugía", veterinary_id: veterinary_4.id)
vet_19 = Vet.create(email: "eugenia@gmail.com", password: "123123", name: "Eugenia", address: "La Oración 290", phone_number: "11119991", specialty: "Cirugía", veterinary_id: veterinary_4.id)
vet_20 = Vet.create(email: "natalia@gmail.com", password: "123123", name: "Natalia", address: "Rosario Norte 615", phone_number: "11119990", specialty: "Dermatología", veterinary_id: veterinary_4.id)

# Vets of Veterinary 5
vet_21 = Vet.create(email: "ricardo@gmail.com", password: "123123", name: "Ricardo", address: "Pío XI 505", phone_number: "11119989", specialty: "Medicina General", veterinary_id: veterinary_5.id)
vet_22 = Vet.create(email: "emilio@gmail.com", password: "123123", name: "Emilio", address: "La Gloria 120", phone_number: "11119979", specialty: "Radiografía", veterinary_id: veterinary_5.id)
vet_23 = Vet.create(email: "valentina@gmail.com", password: "123123", name: "Valentina", address: "Los Militares 4885", phone_number: "11119969", specialty: "Radiografía", veterinary_id: veterinary_5.id)
vet_24 = Vet.create(email: "mariana@gmail.com", password: "123123", name: "Mariana", address: "Porto Alegre 68", phone_number: "11119959", specialty: "Traumatología", veterinary_id: veterinary_5.id)
vet_25 = Vet.create(email: "fernando@gmail.com", password: "123123", name: "Fernando", address: "La Castellana Norte 44 ", phone_number: "11119949", specialty: "Cirugía", veterinary_id: veterinary_5.id)

puts "Vets created successfully"

puts "Adding img to vets"
# vet_1.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h30.jpg')),
#                   filename: "vet_h30.jpg",
#                   content_type: "image/jpg")
# vet_2.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h31.jpg')),
#                   filename: "vet_h31.jpg",
#                   content_type: "image/jpg")
# vet_3.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m30.png')),
#                   filename: "vet_m30.png",
#                   content_type: "image/png") #M
# vet_4.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m31.jpg')),
#                   filename: "vet_m31.jpg",
#                   content_type: "image/jpg") #M
# vet_5.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h32.jpg')),
#                   filename: "vet_h32.jpg",
#                   content_type: "image/jpg")
# vet_6.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m32.jpg')),
#                   filename: "vet_m32.jpg",
#                   content_type: "image/jpg") #M
# vet_7.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h33.jpg')),
#                   filename: "vet_h33.jpg",
#                   content_type: "image/jpg")
# vet_8.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h34.jpg')),
#                   filename: "vet_h34.jpg",
#                   content_type: "image/jpg")
# vet_9.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m33.jpg')),
#                   filename: "vet_m33.jpg",
#                   content_type: "image/jpg") #M
# vet_10.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m34.jpg')),
#                   filename: "vet_m34.jpg",
#                   content_type: "image/jpg") #M
# vet_11.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h35.jpg')),
#                   filename: "vet_h35.jpg",
#                   content_type: "image/jpg")
# vet_12.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m35.jpg')),
#                   filename: "vet_m35.jpg",
#                   content_type: "image/jpg") #M
# vet_13.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h36.jpg')),
#                   filename: "vet_h36.jpg",
#                   content_type: "image/jpg")
# vet_14.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h37.jpg')),
#                   filename: "vet_h37.jpg",
#                   content_type: "image/jpg")
# vet_15.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m36.jpg')),
#                   filename: "vet_m36.jpg",
#                   content_type: "image/jpg") #M
# vet_16.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m37.jpg')),
#                   filename: "vet_m37.jpg",
#                   content_type: "image/jpg") #M
# vet_17.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h38.jpg')),
#                   filename: "vet_h38.jpg",
#                   content_type: "image/jpg")
# vet_18.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h42.jpg')),
#                   filename: "vet_h42.jpg",
#                   content_type: "image/jpg")
# vet_19.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m38.jpg')),
#                   filename: "vet_m38.jpg",
#                   content_type: "image/jpg") #M
# vet_20.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m39.jpg')),
#                   filename: "vet_m39.jpg",
#                   content_type: "image/jpg") #M
# vet_21.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h39.jpg')),
#                   filename: "vet_h39.jpg",
#                   content_type: "image/jpg")
# vet_22.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h40.jpg')),
#                   filename: "vet_h40.jpg",
#                   content_type: "image/jpg")
# vet_23.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m40.jpg')),
#                   filename: "vet_m40.jpg",
#                   content_type: "image/jpg") #M
# vet_24.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_m41.jpg')),
#                   filename: "vet_m41.jpg",
#                   content_type: "image/jpg") #M
# vet_25.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Vets', 'vet_h41.jpg')),
#                   filename: "vet_h41.jpg",
#                   content_type: "image/jpg")
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
owner_1 = Owner.create(email: 'pepe@gmail.com', password: '123123', name: 'Pepe', last_name: 'Macaya', address: 'España 12', phone_number: '77772222')
owner_2 = Owner.create(email: 'raul@gmail.com', password: '123123', name: 'Raul', last_name: 'Bianculli', address: 'Argentina 20', phone_number: '77774444')
owner_3 = Owner.create(email: 'josefina@gmail.com', password: '123123', name: 'Josefina', last_name: 'Caroca', address: 'Camino la fuente 1475', phone_number: '55556666')
owner_4 = Owner.create(email: 'alejandro@gmail.com', password: '123123', name: 'Alejandro', last_name: 'Maiza', address: 'Flor de Azucena 80', phone_number: '55556661')
owner_5 = Owner.create(email: 'virginia@gmail.com', password: '123123', name: 'Virginia', last_name: 'Alvarez', address: 'Badajoz 122', phone_number: '55556662')
puts "Owners created successfully"

puts "Adding profile images to owners"
owner_1.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Owners', 'owner_h1.jpg')),
                  filename: "owner_h1.jpg",
                  content_type: "image/jpg")
owner_2.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Owners', 'owner_h2.jpg')),
                  filename: "owner_h2.jpg",
                  content_type: "image/jpg")
owner_3.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Owners', 'owner_m1.jpg')),
                  filename: "owner_m1.jpg",
                  content_type: "image/jpg")
owner_4.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Owners', 'owner_m2.jpg')),
                  filename: "owner_m2.jpg",
                  content_type: "image/jpg")
owner_5.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Owners', 'owner_h3.jpg')),
                  filename: "owner_h3.jpg",
                  content_type: "image/jpg")
puts "Profile images added successfully to owners"

# Pets Seeds
puts "Creating pets seeds..."

# Pets of Owner 1
lupe = Pet.create(name: "Lupe", birthdate: Date.new(2020, 5, 15), weight: 25, pet_chip: 12345, animal_type_id: dog.id, owner_id: owner_1.id)
bolt = Pet.create(name: "Bolt", birthdate: Date.new(2020, 5, 15), weight: 30, pet_chip: 12347, animal_type_id: dog.id, owner_id: owner_1.id)
tango = Pet.create(name: "Tango", birthdate: Date.new(2015, 5, 15), weight: 30, pet_chip: 12400, animal_type_id: dog.id, owner_id: owner_1.id)
pipa = Pet.create(name: "Pipa", birthdate: Date.new(2019, 6, 15), weight: 28, pet_chip: 12401, animal_type_id: dog.id, owner_id: owner_1.id)
maya = Pet.create(name: "Maya", birthdate: Date.new(2019, 12, 15), weight: 25, pet_chip: 12402, animal_type_id: dog.id, owner_id: owner_1.id)
rodolfa = Pet.create(name: "Rodolfa", birthdate: Date.new(2018, 5, 15), weight: 31, pet_chip: 12403, animal_type_id: dog.id, owner_id: owner_1.id)

# Pets of owner 2
agatha = Pet.create(name: "Agatha", birthdate: Date.new(2020, 5, 15), weight: 6, pet_chip: 12404, animal_type_id: cat.id, owner_id: owner_2.id)
rayo = Pet.create(name: "Rayo", birthdate: Date.new(2021, 4, 15), weight: 1.5, pet_chip: 12405, animal_type_id: rabbit.id, owner_id: owner_2.id)
centella = Pet.create(name: "Centella", birthdate: Date.new(2021, 7, 15), weight: 1.8, pet_chip: 12406, animal_type_id: rabbit.id, owner_id: owner_2.id)
consentida = Pet.create(name: "Consentida", birthdate: Date.new(2016, 3, 12), weight: 420, pet_chip: 12407, animal_type_id: horse.id, owner_id: owner_2.id)
chica = Pet.create(name: "Chica", birthdate: Date.new(2018, 7, 15), weight: 24, pet_chip: 12408, animal_type_id: dog.id, owner_id: owner_2.id)

# Pets of owner 3
garfield = Pet.create(name: "Garfield", birthdate: Date.new(2019, 6, 5, 15), weight: 35, pet_chip: 12348, animal_type_id: dog.id, owner_id: owner_3.id)
bimba = Pet.create(name: "Bimba", birthdate: Date.new(2020, 5, 20), weight: 30, pet_chip: 12409, animal_type_id: dog.id, owner_id: owner_3.id)
sultan = Pet.create(name: "Sultan", birthdate: Date.new(2019, 4, 21), weight: 35, pet_chip: 12410, animal_type_id: dog.id, owner_id: owner_3.id)
thor = Pet.create(name: "Thor", birthdate: Date.new(2020, 5, 15), weight: 35, pet_chip: 12411, animal_type_id: dog.id, owner_id: owner_3.id)
zuki = Pet.create(name: "Zuki", birthdate: Date.new(2018, 9, 15), weight: 0.4, pet_chip: 12412, animal_type_id: bird.id, owner_id: owner_3.id)

# Pets of owner 4
zoka = Pet.create(name: "Zoka", birthdate: Date.new(2020, 5, 15), weight: 1.4, pet_chip: 12413, animal_type_id: ferret.id, owner_id: owner_4.id)
pato = Pet.create(name: "Pato el pez", birthdate: Date.new(2020, 8, 1), weight: 0.4, pet_chip: 12414, animal_type_id: fish.id, owner_id: owner_4.id)
nala = Pet.create(name: "Nala", birthdate: Date.new(2021, 8, 9), weight: 0.1, pet_chip: 12415, animal_type_id: hamster.id, owner_id: owner_4.id)

# Pets of owner 5
zuko = Pet.create(name: "Zuko", birthdate: Date.new(2017, 2, 15), weight: 2.5, pet_chip: 12416, animal_type_id: dog.id, owner_id: owner_5.id)
sara = Pet.create(name: "Sara", birthdate: Date.new(2017, 8, 15), weight: 2.2, pet_chip: 12418, animal_type_id: dog.id, owner_id: owner_5.id)
moka = Pet.create(name: "Moka", birthdate: Date.new(2017, 12, 15), weight: 2.3, pet_chip: 12419, animal_type_id: dog.id, owner_id: owner_5.id)
lucifer = Pet.create(name: "Lucifer", birthdate: Date.new(2018, 7, 7), weight: 5, pet_chip: 12417, animal_type_id: cat.id, owner_id: owner_5.id)
gusgus = Pet.create(name: "Gus-Gus", birthdate: Date.new(2020, 7, 7), weight: 0.1, pet_chip: 12420, animal_type_id: hamster.id, owner_id: owner_5.id)

puts "Pets created successfully"

puts "Adding profile images to the pets"
# lupe.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'lupe.jpg')),
#                   filename: "lupe.jpg",
#                   content_type: "image/jpg")
# bolt.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'bolt.jpg')),
#                   filename: "bolt.jpg",
#                   content_type: "image/jpg")
# tango.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'tango.jpg')),
#                   filename: "tango.jpg",
#                   content_type: "image/jpg")
# maya.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'maya.jpg')),
#                   filename: "maya.jpg",
#                   content_type: "image/jpg")
# rodolfa.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'rodolfa.jpg')),
#                   filename: "rodolfa.jpg",
#                   content_type: "image/jpg")
# pipa.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'pipa.jpg')),
#                   filename: "pipa.jpg",
#                   content_type: "image/jpg")
# bimba.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'bimba.jpg')),
#                   filename: "bimba.jpg",
#                   content_type: "image/jpg")
# sultan.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'sultan.jpg')),
#                   filename: "sultan.jpg",
#                   content_type: "image/jpg")
# agatha.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'agatha.png')),
#                   filename: "agatha.png",
#                   content_type: "image/png")
# centella.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'centella.jpg')),
#                   filename: "centella.jpg",
#                   content_type: "image/jpg")
# rayo.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'rayo.jpg')),
#                   filename: "rayo.jpg",
#                   content_type: "image/jpg")
# consentida.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'horse.jpg')),
#                   filename: "horse.jpg",
#                   content_type: "image/jpg")
# chica.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'chica.jpg')),
#                   filename: "chica.jpg",
#                   content_type: "image/jpg")
# garfield.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'garfield.jpg')),
#                   filename: "garfield.jpg",
#                   content_type: "image/jpg")
# thor.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'thor.jpg')),
#                   filename: "thor.jpg",
#                   content_type: "image/jpg")
# zuki.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'zuki.jpg')),
#                   filename: "zuki.jpg",
#                   content_type: "image/jpg")
# zoka.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'zoka.jpg')),
#                   filename: "zoka.jpg",
#                   content_type: "image/jpg")

# zuko.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'zuko.jpg')),
#                   filename: "zuko.jpg",
#                   content_type: "image/jpg")
# nala.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'nala.jpg')),
#                   filename: "nala.jpg",
#                   content_type: "image/jpg")
# pato.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'pato.jpg')),
#                   filename: "pato.jpg",
#                   content_type: "image/jpg")
# sara.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'sara.jpg')),
#                   filename: "sara.jpg",
#                   content_type: "image/jpg")
# moka.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'moka.jpg')),
#                   filename: "moka.jpg",
#                   content_type: "image/jpg")
# lucifer.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'lucifer.jpg')),
#                   filename: "lucifer.jpg",
#                   content_type: "image/jpg")
# gusgus.photo.attach(io: File.open(Rails.root.join('..', 'Images', 'Pets', 'gusgus.jpg')),
#                   filename: "gusgus.jpg",
#                   content_type: "image/jpg")
puts "Images added successfully"

# RecordType Seeds
puts "Creating record types..."
record_type_1 = RecordType.create(record_type: 'Examen general')
record_type_2 = RecordType.create(record_type: 'Vacuna')
record_type_3 = RecordType.create(record_type: 'Receta')
record_type_4 = RecordType.create(record_type: 'Radiografía')
record_type_5 = RecordType.create(record_type: 'Electrocardiograma')
record_type_6 = RecordType.create(record_type: 'Esterelización')
record_type_7 = RecordType.create(record_type: 'Control')
record_type_8 = RecordType.create(record_type: 'Trauma')
record_type_9 = RecordType.create(record_type: 'Quiroterapia')
puts "Record types created successfully"

# Records seeds
puts "Creating records"

# Records of pets of owner 1

# Lupe
rec_1 = Record.create(name: "Primera vacuna para Lupe", observation: "Dado que la perrita cumplió los 2 meses de edad, se le vacunó contra la rabia y el parvo", date: Date.new(2020, 7, 15), vet_id: vet_4.id, pet_id: lupe.id, record_type_id: record_type_2.id)
rec_2 = Record.create(name: "Segunda vacuna para Lupe", observation: "Pasaron 2 meses de la primera vacuna, por lo que le tocó el segundo set de vacunas", date: Date.new(2020, 10, 15), vet_id: vet_4.id, pet_id: lupe.id, record_type_id: record_type_2.id)
rec_3 = Record.create(name: "Esterilización Lupe", observation: "La perrita ya cumplió 1 años de edad y le llego su primer celo, por lo tanto fue esterilizada", date: Date.new(2021, 7, 15), vet_id: vet_6.id, pet_id: lupe.id, record_type_id: record_type_6.id)

# Bolt
rec_4 = Record.create(name: "Primera vacuna para Bolt", observation: "Dado que el perrito cumplió los 2 meses de edad, se le vacunó contra la rabia y el parvo", date: Date.new(2020, 7, 15), vet_id: vet_5.id, pet_id: bolt.id, record_type_id: record_type_2.id)
rec_5 = Record.create(name: "Segunda vacuna para Bolt", observation: "Pasaron 2 meses de la primera vacuna, por lo que le tocó el segundo set de vacunas", date: Date.new(2020, 10, 15), vet_id: vet_5.id, pet_id: bolt.id, record_type_id: record_type_2.id)
rec_6 = Record.create(name: "Herida en la pata de Bolt", observation: "El paciente llegó con una trauma en su pata delantera derecha. Se le curó y se solicitó al dueño pedir hora para hacerle una radiografía", date: Date.new(2021, 4, 15), vet_id: vet_5.id, pet_id: bolt.id, record_type_id: record_type_8.id)
rec_7 = Record.create(name: "Radiografía en la pata de Bolt", observation: "La radiografía mostró que el paciente tiene una fractura grado 2 en su pata delantera derecha. Se le surgiere al dueño que lo opere.", date: Date.new(2021, 4, 20), vet_id: vet_1.id, pet_id: bolt.id, record_type_id: record_type_4.id)
rec_8 = Record.create(name: "Remedios para el dolor", observation: "El paciente presenta mucho dolor en su pata delantera derecha por lo que se le recentan remdios para aliviarlo.", date: Date.new(2021, 4, 20), vet_id: vet_1.id, pet_id: bolt.id, record_type_id: record_type_3.id)
rec_9 = Record.create(name: "Control Bolt", observation: "La herida y fractura del paciente evolucionó de manera positiva, por lo que ya no es necesaria la operación.", date: Date.new(2021, 5, 10), vet_id: vet_5.id, pet_id: bolt.id, record_type_id: record_type_3.id)

# Tango
rec_10 = Record.create(name: "Primera vacuna para Tango", observation: "Dado que el perrito cumplió los 2 meses de edad, se le vacunó contra la rabia y el parvo", date: Date.new(2015, 7, 15), vet_id: vet_4.id, pet_id: tango.id, record_type_id: record_type_2.id)
rec_11 = Record.create(name: "Segunda vacuna para Tango", observation: "Pasaron 2 meses de la primera vacuna, por lo que le tocó el segundo set de vacunas", date: Date.new(2015, 9, 15), vet_id: vet_4.id, pet_id: tango.id, record_type_id: record_type_2.id)
rec_12 = Record.create(name: "Atención tras pelea con otro perro", observation: "El paciente llego cubierto de sangre producto de las heridas. Dueño afirma que se peleo con un perro de la calle. Dado que no poseemos un experto en traumatología le recomendamos que lo llevara a 2 Patitas.", date: Date.new(2017, 4, 15), vet_id: vet_5.id, pet_id: tango.id, record_type_id: record_type_8.id)
rec_13 = Record.create(name: "Atención tras pelea con otro perro", observation: "El paciente llego cubierto de sangre producto de las heridas. Dueño afirma que se peleo con un perro de la calle. Sus heridas fueron tratadas y se quedo 1 dia hospitalizado.", date: Date.new(2017, 4, 16), vet_id: vet_8.id, pet_id: tango.id, record_type_id: record_type_8.id)
rec_14 = Record.create(name: "Remedios para el dolor", observation: "El paciente fue dado de alta luego de 1 dia de hospitalización. Se le recetaron remedios para el dolor.", date: Date.new(2017, 4, 16), vet_id: vet_2.id, pet_id: tango.id, record_type_id: record_type_3.id)

# Pipa
rec_15 = Record.create(name: "Primera vacuna para Pipa", observation: "Dado que la perrita cumplió los 2 meses de edad, se le vacunó contra la rabia y el parvo", date: Date.new(2019, 8, 15), vet_id: vet_5.id, pet_id: pipa.id, record_type_id: record_type_2.id)
rec_16 = Record.create(name: "Segunda vacuna para Pipa", observation: "Pasaron 2 meses de la primera vacuna, por lo que le tocó el segundo set de vacunas", date: Date.new(2019, 10, 15), vet_id: vet_5.id, pet_id: pipa.id, record_type_id: record_type_2.id)
rec_17 = Record.create(name: "Esterilización Pipa", observation: "La perrita ya cumplió 1 años de edad y le llego su primer celo, por lo tanto fue esterilizada", date: Date.new(2020, 6, 15), vet_id: vet_6.id, pet_id: pipa.id, record_type_id: record_type_6.id)
rec_18 = Record.create(name: "Alergia en la piel", observation: "Pipa llegó con una alergia en su piel. La posible causa es su alimento, por lo que debe volver en 1 mes más a un control.", date: Date.new(2020, 8, 15), vet_id: vet_7.id, pet_id: pipa.id, record_type_id: record_type_1.id)
rec_19 = Record.create(name: "Alergia en la piel", observation: "Pipa llegó con una alergia en su piel. Se le recetaron remedios para calmar su picazón.", date: Date.new(2020, 8, 15), vet_id: vet_7.id, pet_id: pipa.id, record_type_id: record_type_3.id)
rec_20 = Record.create(name: "Control alergia", observation: "La alergia evolucionó de forma positiva, de esta manera se confirma que su alergia era alimentaria.", date: Date.new(2020, 9, 15), vet_id: vet_7.id, pet_id: pipa.id, record_type_id: record_type_7.id)

# Maya
rec_21 = Record.create(name: "Primera vacuna para Maya", observation: "Dado que la perrita cumplió los 2 meses de edad, se le vacunó contra la rabia y el parvo", date: Date.new(2020, 2, 15), vet_id: vet_4.id, pet_id: maya.id, record_type_id: record_type_2.id)
rec_22 = Record.create(name: "Segunda vacuna para Maya", observation: "Pasaron 2 meses de la primera vacuna, por lo que le tocó el segundo set de vacunas", date: Date.new(2020, 4, 15), vet_id: vet_4.id, pet_id: maya.id, record_type_id: record_type_2.id)
rec_23 = Record.create(name: "Esterilización Maya", observation: "La perrita ya cumplió 1 años de edad y le llego su primer celo, por lo tanto fue esterilizada", date: Date.new(2020, 12, 15), vet_id: vet_6.id, pet_id: maya.id, record_type_id: record_type_6.id)

# Rodolfa
rec_24 = Record.create(name: "Primera vacuna para Rodolfa", observation: "Dado que la perrita cumplió los 2 meses de edad, se le vacunó contra la rabia y el parvo", date: Date.new(2018, 7, 15), vet_id: vet_5.id, pet_id: rodolfa.id, record_type_id: record_type_2.id)
rec_25 = Record.create(name: "Segunda vacuna para Rodolfa", observation: "Pasaron 2 meses de la primera vacuna, por lo que le tocó el segundo set de vacunas", date: Date.new(2018, 9, 15), vet_id: vet_5.id, pet_id: rodolfa.id, record_type_id: record_type_2.id)
rec_26 = Record.create(name: "Esterilización Rodolfa", observation: "La perrita ya cumplió 1 años de edad y le llego su primer celo, por lo tanto fue esterilizada", date: Date.new(2019, 5, 15), vet_id: vet_6.id, pet_id: rodolfa.id, record_type_id: record_type_6.id)
rec_27 = Record.create(name: "Parasitos en el estomago", observation: "El paciente llego flaco. Se le realizo un examen estomacal y de fecas, detectando así la presencia de parasitos.", date: Date.new(2019, 9, 15), vet_id: vet_5.id, pet_id: rodolfa.id, record_type_id: record_type_1.id)
rec_28 = Record.create(name: "Parasitos en el estomago", observation: "Dada la presencia de parasitos se le recetó un remedio para eliminarlos.", date: Date.new(2019, 9, 15), vet_id: vet_5.id, pet_id: rodolfa.id, record_type_id: record_type_3.id)

# Agatha
# Rayo
# Centella
# Consentida
# Chica

# Garfield
# Bimba
# Sultan
# Thor
# Zuki

# Zoka
# Pato
# Nala

# Zuko
# Sara
# Moka
# Lucife
# Gusgus

puts "Records created successfully"

#puts "Creating appointments"
#appointment_1 = Appointment.create(hour: DateTime.new(2023, 1, 1, 9, 0), start_time: DateTime.new(2023, 1, 1, 9, 0), end_time: DateTime.new(2023, 1, 1, 10, 0), specialty: "medicina general", pet: lupe, vet: vet_1 )
#puts "Appointments created succsessfully"
