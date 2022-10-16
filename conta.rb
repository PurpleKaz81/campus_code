class Conta
  attr_accessor :saldo
  attr_reader :numero, :titular

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @tipo = 'corrente' # no need to fill in as parameter if every account starts as a checcking account
  end

  def sacar(valor)
    if saldo >= valor
      self.saldo -= valor # we could also use @saldo
    else
      puts 'Se fodeu, man, não tem grana não!'
    end
  end

  def depositar(valor)
    self.saldo += valor
  end

  def transferir(conta_destino, valor)
    if self.saldo >= valor
      sacar(valor) # self.sacar is optional cuz there's no = sign
      conta_destino.depositar(valor)
    else
      puts 'Não dá pra transferir grana que você não tem, campeão!'
    end
  end
end
