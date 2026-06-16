class Colonia {
    const criaturas = [] //No necesita getter

    method poderOfensivo() = criaturas.sum({ c => c.poderOfensivo() })
    method cantidadDeFormidables() = criaturas.count({ c => c.esFormidable() })
    method esPosibleConquistar(area) = self.poderOfensivo() > area.poderDefensivo()
    method intentarConquistaDe(area) {
        if (self.esPosibleConquistar(area)) {
            area.cambiarDominioDelAreaPor(self)
        } else {
            self.sufrirDerrota()
        }
    }
    method sufrirDerrota() { criaturas.forEach({c => c.variarPoderMagicoEn(-15)}) }
}