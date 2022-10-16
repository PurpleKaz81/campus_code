INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo
  puts 'Bem-vindo ao Cookbook.'
end

def menu
  puts "[#{INSERIR_RECEITA}] Cadastre sua receita."
  puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas."
  puts "[3] Buscar receitas."
  puts "[#{SAIR}] Sair."
  puts
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

def imprimir_receitas(receita_input)
  puts '========== Receitas Cadastradas =========='
  receita_input.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts 'Não há receitas cadastradas.' if receita_input.empty?
end

puts
bem_vindo
puts

receitas = []

escolha = menu

loop do
  if escolha == INSERIR_RECEITA
    receitas << inserir_receita
  elsif escolha == VISUALIZAR_RECEITAS
    imprimir_receitas(receitas)
  elsif escolha == SAIR
    break
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
