SELECT 
  estadios.id, 
  estadios.descripcion, 
  equipos.id, 
  equipos.nombre, 
  jugadores.id, 
  jugadores.nombre, 
  jugadores.apellido, 
  jugadores.numero, 
  jugadores.fecha_nacimiento, 
  jugadores.equipos_id, 
  jugadores.posiciones_id, 
  goleadores.id, 
  goleadores.posicion_id, 
  goleadores.jugador_id, 
  goleadores.equipo_id, 
  goleadores.goles, 
  posiciones.id, 
  posiciones.descripcion
FROM 
  public.equipos, 
  public.estadios, 
  public.jugadores, 
  public.posiciones, 
  public.goleadores
WHERE 
  equipos.id = jugadores.equipos_id AND
  estadios.id = equipos.id AND
  jugadores.id = goleadores.jugador_id AND
  jugadores.posiciones_id = posiciones.id;
