class Area {
    var coloniaQueLaDomina

    method poderDefensivo()
    method cambiarDominioDelAreaPor(nuevaColonia) { coloniaQueLaDomina = nuevaColonia }
}
class Claro inherits Area { 
    override method poderDefensivo() = coloniaQueLaDomina.poderOfensivo() + 100
}
class Castillo inherits Area {
    override method poderDefensivo() = coloniaQueLaDomina.cantidadDeFormidables() * 200
}