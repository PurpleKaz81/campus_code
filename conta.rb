class Conta
  attr_accessor :titular, :saldo
  attr_reader :numero

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @tipo = 'corrente' # no need to fill in as parameter
  end
end
