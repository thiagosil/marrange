# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cerimony = Category.create(name: 'Cerimônia')
Expense.create(name: 'Doação igreja', category: cerimony)
Expense.create(name: 'Cerimonialista', category: cerimony)

reception = Category.create(name: 'Recepção')
Expense.create(name: 'Menu por pessoa', category: reception)
Expense.create(name: 'Buffet', category: reception)
Expense.create(name: 'Aluguel do espaço', category: reception)
Expense.create(name: 'Mobiliário', category: reception)

music = Category.create(name: 'Música')
Expense.create(name: 'Música cerimônia', category: music)
Expense.create(name: 'Música recepção', category: music)

invites = Category.create(name: 'Convites')
Expense.create(name: 'Convites', category: invites)
Expense.create(name: 'Cartões de Agradecimento', category: invites)

gifts = Category.create(name: 'Lembrança de casamento')
Expense.create(name: 'Lembrança de casamento', category: gifts)
Expense.create(name: 'Lembrança crianças', category: gifts)

flowers = Category.create(name: 'Flores e Decoração')
Expense.create(name: 'Bouquet Noiva', category: flowers)
Expense.create(name: 'Decoração cerimônia', category: flowers)
Expense.create(name: 'Decoração buffet', category: flowers)

photos = Category.create(name: 'Foto e Vídeo')
Expense.create(name: 'Fotógrafo', category: photos)
Expense.create(name: 'Filmagem', category: photos)

transport = Category.create(name: 'Transporte')
Expense.create(name: 'Carro para os noivos', category: transport)


# jewels = Category.create(name: 'Joalheria')
# Expense.create(name: 'Carro para os noivos', category: transport)
bride = Category.create(name: 'Noiva e Acessórios')
Expense.create(name: 'Vestido Noiva', category: bride)
Expense.create(name: 'Sapatos', category: bride)
Expense.create(name: 'Lingerie', category: bride)
Expense.create(name: 'Penteado', category: bride)
Expense.create(name: 'Véu', category: bride)

groom = Category.create(name: 'Noivo e Acessórios')
Expense.create(name: 'Roupa do noivo', category: groom)
Expense.create(name: 'Sapatos', category: groom)
Expense.create(name: 'Gravata', category: groom)
Expense.create(name: 'Camisa', category: groom)

beauty = Category.create(name: 'Beleza e saúde')
Expense.create(name: 'Cabeleireiro noiva', category: beauty)
Expense.create(name: 'Maquiagem noiva', category: beauty)
Expense.create(name: 'Estética noiva', category: beauty)
Expense.create(name: 'Cabeleireiro noivo', category: beauty)
Expense.create(name: 'Estética noivo', category: beauty)

honeymoon = Category.create(name: 'Viagem de Noivos')
Expense.create(name: 'Lua de Mel', category: honeymoon)

others = Category.create(name: 'Outros')
Expense.create(name: 'Noite de Núpcias', category: others)
Expense.create(name: 'Hospedagem Convidados', category: others)
