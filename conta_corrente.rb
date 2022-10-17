require_relative 'conta'

class ContaCorrente < Conta
  attr_accessor :limite

  def initialize(numero, titular, saldo, limite)
    super(numero, titular, saldo)
    @limite = limite
  end
end
