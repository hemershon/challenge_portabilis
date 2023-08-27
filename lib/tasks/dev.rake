# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    puts 'Resetando o banco de dados.'
    puts 'Finalizando o reset banco de dados...'
    p 'cadastrando os dados do sistema'
    100.times do |_i|
      User.create!(
        name: Faker::Name.name,
        date: Faker::Date.birthday(min_age: 18, max_age: 65),
        adjutancy: Faker::Job.title,
        email: Faker::Internet.email,
        password: Faker::Address.street_name
      )
    end
    p 'Cadastrados'
  end
end
