class Conta
  attr_accessor :saldo
  attr_reader :numero, :titular

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @tipo = 'corrente' # no need to fill in as parameter if every account starts as a checcking account
  end
end
