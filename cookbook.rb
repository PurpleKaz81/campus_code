# frozen_string_literal: true

receitas = []

puts 'Bem-vindo ao Cookbook.'

while true
  puts 'Digite o nome da sua receita.'
  nome = gets.chomp.downcase

  receitas << nome

  puts "Receita de #{nome} cadastrada com sucesso!"

  puts '========== Receitas Cadastradas =========='

  puts receitas

  # receitas.each do |receita|
  #   puts receita
  # end

  # for receita in receitas
  #   puts receita
  # end
end

# receitas << 'Bolo de cenoura'

# receitas << 3

# receitas << 'suco'

# puts receitas

# receitas.delete(3)

# puts receitas

# puts receitas[0]
