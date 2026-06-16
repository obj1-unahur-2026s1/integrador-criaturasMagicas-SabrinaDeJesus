import mascotas.* //Es necesario para poder instanciar una Mascota (en cambiarA())

object guardian {
    method extra() = 100
    method esExtraordinario(criatura) = criatura.poderMagico() > 50
    method cambiarA() = new Domador(mascotas = [new Mascota(edad = 1, tieneCuernos = false)])
}
class Domador {
    const mascotas = []

    method extra() = 150 * self.cantidadDeMascotasConCuernos()
    method cantidadDeMascotasConCuernos() = mascotas.count({ m => m.tieneCuernos() })
    method esExtraordinario(criatura) = criatura.poderMagico() >= 15 and mascotas.all({ m => m.esVeterana() })
    method cambiarA() {
        if (self.cantidadDeMascotasConCuernos() > 0){
            hechicero
        } else {
            self.error("No es posible cambiar de rol, este domador no tiene mascota con cuernos")
        }
    }
}
object hechicero {
    method extra() = 0
    method esExtraordinario(criatura) = true
    method cambiarA() = guardian
}