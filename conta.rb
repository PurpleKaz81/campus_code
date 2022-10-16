class Conta
  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
    @tipo = 'corrente' # no need to fill in as parameter
  end

  def numero
    @numero
  end

  def titular
    @titular
  end

  def saldo
    @saldo
  end

end
