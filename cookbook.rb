# frozen_string_literal: true

receitas = []

puts 'Bem-vindo ao Cookbook.'

while true do
  puts 'Digite o nome da sua receita.'
  nome = gets.chomp.downcase

  receitas << nome

  puts "Receita de #{nome} cadastrada com sucesso!"
  puts
  puts '===========Receitas Cadastradas==========='
end

# receitas << 'Bolo de cenoura'

# receitas << 3

# receitas << 'suco'

# puts receitas

# receitas.delete(3)

# puts receitas

# puts receitas[0]
