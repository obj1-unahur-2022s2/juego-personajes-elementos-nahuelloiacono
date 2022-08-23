import personajes.*
import elementos.*

object luisa {
	var personajeActivo
	method personajeActivo(unPersonaje) {personajeActivo = unPersonaje}
	method personajeActivo() = personajeActivo
	method aparece(elemento) {personajeActivo.encontrar(elemento)}
}