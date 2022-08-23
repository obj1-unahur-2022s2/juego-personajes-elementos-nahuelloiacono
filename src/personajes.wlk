import armas.*
import elementos.*

object floki {
	var arma = ballesta
	method encontrar(elemento) {
		if(arma.estaCargada()) {
			elemento.recibirAtaque(arma)
			arma.usarArma()
		}
	}
	method cambiarArma(unArma) {arma = unArma}
}

object mario {
	var valorRecoletado = 0
	var ultimoElementoVisitado
	method encontrar(elemento) {
		valorRecoletado += elemento.valorOtorgado()
		elemento.recibirTrabajo()
		ultimoElementoVisitado = elemento
	}
	method estaFeliz() = valorRecoletado >= 50 
	|| ultimoElementoVisitado.altura() >= 10
}
