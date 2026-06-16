class Criatura {
  var poderMagico
  const astucia //El IDE subraya por 'atributo no usado' pero sí se usa en las hadas
  var rol

  method poderMagico() = poderMagico
  method poderOfensivo() = poderMagico * 10 + rol.extra()
  method esFormidable() = self.esAstuta() or self.esExtraordinaria()
  // esAstuta() es abstracta porque no hay definición común que campartan las subclases
  method esAstuta()
  method esExtraordinaria() = rol.esExtraordinario(self)
  method cambiarRol() { rol = rol.cambiarA()}
  // Recibe un porcentaje que puede ser negativo cuando se necesita restarselo 
  method variarPoderMagicoEn(porcentaje) { poderMagico *= 1 + porcentaje * 0.01 } 
}
class Duende inherits Criatura {
  override method poderOfensivo() = super() * 1.1
  override method esAstuta() = false
}
class Hada inherits Criatura {
  var kmsQuePuedeVolar = 2
  
  //No se especifica de que manera aumentan (paulatinamente podria ser 1 o mas)
  method aumentarKmAVolarEn(km) { kmsQuePuedeVolar = (kmsQuePuedeVolar + km).min(25) }
  override method esAstuta() = astucia > 50
  override method esExtraordinaria() = super() and kmsQuePuedeVolar > 10
}