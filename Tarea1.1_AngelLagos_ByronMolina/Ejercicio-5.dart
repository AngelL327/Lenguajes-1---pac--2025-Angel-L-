class CuentaBancaria {
  final String titular;
  double saldo;

  CuentaBancaria({
   required this.titular,
   required this.saldo});

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Depósito de \$$cantidad realizado.');
    } else {
      print('La cantidad a depositar debe ser mayor a 0.');
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0 && saldo >= cantidad) {
      saldo -= cantidad;
      print('Retiro de \$$cantidad realizado.');
    } else if (cantidad <= 0) {
      print('La cantidad a retirar debe ser mayor a 0.');
    } else {
      print('Fondos insuficientes. No se puede retirar \$$cantidad.');
    }
  }

  void consultarSaldo() {
    print('Saldo actual de $titular: \$$saldo');
  }
}

void main() {
  final cuenta1 = CuentaBancaria(titular: 'Byron Molina', saldo: 500.00);
  cuenta1.consultarSaldo();
  cuenta1.depositar(200);
  cuenta1.consultarSaldo();
  cuenta1.retirar(100);
  cuenta1.consultarSaldo();
  cuenta1.retirar(700); 
}
