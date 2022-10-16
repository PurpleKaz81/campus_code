# frozen_string_literal: true

puts 'Bem-vindo ao Cookbook.'

receitas = []

puts '[1] Cadastre sua receita.'
puts '[2] Ver todas as receitas.'
puts '[3] Sair.'

print 'Escolha uma opção: '
escolha = gets.chomp.to_i

while escolha != 3 do
  if escolha == 1
    puts 'Digite o nome da sua receita.'
    nome = gets.chomp.downcase
    receitas << nome
    puts "Receita de #{nome} cadastrada com sucesso!"
  elsif escolha == 2
    puts '========== Receitas Cadastradas =========='
    puts receitas
  else
    puts 'Opção inválida.'
  end

  puts '[1] Cadastre sua receita.'
  puts '[2] Ver todas as receitas.'
  puts '[3] Sair.'
  # receitas.each do |receita|
  #   puts receita
  # end

  # for receita in receitas
  #   puts receita
  # end
end

puts 'Obrigado por usar o Cookbook!'

# receitas << 'Bolo de cenoura'

# receitas << 3

# receitas << 'suco'

# puts receitas

# receitas.delete(3)

# puts receitas

# puts receitas[0]
