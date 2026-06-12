class Profesional{
  const uniDondeSeEstudio

  method uniDondeSeEstudio() = uniDondeSeEstudio
  method honorarios()
  method provinciasDondeTrabajar()
}

class ProfesionalesVinculados inherits Profesional{
  override method honorarios(){
    return uniDondeSeEstudio.honorariosRecomendados()
  }
  override method provinciasDondeTrabajar(){
    return uniDondeSeEstudio.provincia()  //Debe debolver lista igual que en ProfesionalesLitoral
  }
}

class ProfesionalesLitoral inherits Profesional{
  const provinciasDondeTrabajar = ["Entre Ríos", "Santa Fe", "Corrientes"]
  
  override method honorarios(){
    return 3000
  }
  override method provinciasDondeTrabajar(){
    return provinciasDondeTrabajar
  }
}

class ProfesionalesLibres inherits Profesional{
  const honorarios
  const provincias
  
  override method honorarios(){
    return honorarios
  }
  override method provinciasDondeTrabajar(){
    return provincias //Debe debolver lista igual que en ProfesionalesLitoral
  }
}

class Universidad{
  const property provincia
  method honorariosRecomendados()
}