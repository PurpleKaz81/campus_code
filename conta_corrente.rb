require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite

  def initialize(numero, titular, saldo, limite)
    super(numero, titular, saldo)
    @limite = limite
  end

  def sacar(valor)
    if saldo + limite >= valor
      self.saldo -= valor # we could also use @saldo
    else
      puts 'Se fodeu, man, não tem grana não!'
    end
  end

  def transferir(conta_destino, valor)
    if self.saldo + limite >= valor
      sacar(valor) # self.sacar is optional cuz there's no = sign
      conta_destino.depositar(valor)
    else
      puts 'Não dá pra transferir grana que você não tem, campeão!'
    end
  end
end
