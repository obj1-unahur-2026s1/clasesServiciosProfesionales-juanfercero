class Empresa{
  const profesionales = []
  const honorarioDeReferencia 

  method profesionalesQueEstudiaronEn(uni) {
    return profesionales.count({p => p.uniDondeSeEstudio() == uni})
  }
  method profesionalesCaros() {
    return profesionales.filter({p => p.honorarios() > honorarioDeReferencia})
  }
  method universidadesFormadoras() {
    return profesionales.map({p => p.uniDondeSeEstudio()}).asSet()
  }
  method profesionalMasBarato() {
    return profesionales.min({p => p.honorarios()})
  }
  method esDeGenteAcotada() {
    return profesionales.all({p => p.provincias().size() <= 3})
}
}