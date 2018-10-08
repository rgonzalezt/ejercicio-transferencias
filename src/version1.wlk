class Transferencia {
var monto
 	constructor(montoATransferir) {
    	monto = montoATransferir
  	}

  	method transferir(cuentaOrigen, cuentaDestino) {
    	cuentaOrigen.debitar(monto)
    	cuentaDestino.depositar(monto)
  	}
}

class Cuenta {
	var saldo
	constructor(unSaldo) {
		saldo = unSaldo
	}
  
  	method debitar(monto) {
    	if(monto <= saldo){
      		saldo -= monto
    	}
  	}
  
	method depositar(monto) {
		saldo += monto
	}
	
	method saldo() {
		return saldo
	}
}

object transferencia inherits Transferencia(100){}

object cuentaOrigen inherits Cuenta(40){}

object cuentaDestino inherits Cuenta(10){}
