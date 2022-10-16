def bem_vindo
  puts 'Bem-vindo ao Cookbook.'
end

def menu
  puts '[1] Cadastre sua receita.'
  puts '[2] Ver todas as receitas.'
  puts '[3] Sair.'

  print 'Escolha uma opção: '
  gets.chomp.to_i # implicit return
end

def inserir_receita
  puts 'Digite o nome da sua receita: '
  nome = gets.chomp.downcase
  puts 'Digite o tipo de receita: '
  tipo = gets.chomp.downcase
  puts "Receita de #{nome} cadastrada com sucesso!"
  { nome: nome, tipo: tipo }
end

bem_vindo

receitas = []

escolha = menu

while escolha != 3
  if escolha == 1
    receitas << inserir_receita
  elsif escolha == 2
    puts '========== Receitas Cadastradas =========='
    receitas.each do |receita|
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
  else
    puts 'Opção inválida.'
  end

  escolha = menu

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
