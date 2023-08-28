# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    puts 'Resetando o banco de dados.'
    puts 'Finalizando o reset banco de dados...'
    p 'cadastrando os dados do Admins do sistema'
    10.times do 
      Admin.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "123456",
        password_confirmation: "123456",
        role: [0,1].sample
      )
    end
    p 'cadastrando os dados do user do sistema'

    100.times do |_i|
      User.create!(
        name: Faker::Name.name,
        date: Faker::Date.birthday(min_age: 18, max_age: 65),
        adjutancy: Faker::Job.title,
        email: Faker::Internet.email,
        active: [0,1].sample,
        password: "123456",
        password_confirmation: "123456",
      )
    end
    p 'Cadastrados'
  end
end
