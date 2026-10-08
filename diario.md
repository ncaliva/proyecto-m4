# Diario del Proyecto M4

## Día 1 — 2026-10-01

### Qué hice
Pude crear un script con esqueleto de monitoreo con inicio y fin
### Qué aprendí
Aprendi a estructurarlo y finalizarlo con los scripts y tambien a hardcodear y cuando no
### Qué me trabó
La verdad que tuve muchas trabas, supongo que es por ser la primera vez en mi vida que veo y hago algo asi, si bien estuve haciendo cosas que ya habia visto en los anteriores modulos me costo bastante recordar. Lo de hardcodear es algo completamente nuevo tambien. Siento que estas repreguntas y equivocaciones son el inicio de como realizar estos proyectos. Uso innecesario de sudo.

## Día 2 — 2026-10-02

### Qué hice
Pude recolectar data de auth.log y syslog. Agregue kern.log y verifique que dpkg.log no existe, asi como verifique los demas log. Todo agregado al script. Tambien pude agregar fecha hora y hostname al reporte
### Qué aprendí
Aprendi muchas cosa en el camino que si bien las tenia en el curso que habia hecho pero que en la practica fueron utiles como grep -ci la hora el hostname la fecha y como utilizar write_report
### Qué me trabó
Siento que hubo muchisimas menos trabas que ayer solo algunas repreguntas nomas para entender pero puntualmente no hubo algo que me trabo

## Día 3 — 2026-10-07

### Qué hice
La verdad que primera reaccion que tuve me parecio que fue un dia muy corto ya que solo aplicar una automatizacion con cron y listo.
### Qué aprendí
Aprendi a hacer la sintaxis de crontab, como verificar que un cronjob funciono y el dato mas importante que el peso del archivo no es indicador de cambios
### Qué me trabó
Honestamente, creo que nada y mas que nada tambien porque siento que fue algo simple y corto

## Día 4 — 2026-10-07

### Qué hice
Simule 5 intentos fallidos por SSH, a su vez se detecto que el script no leia logs rotados. Se utilizo un bucle for para todos los archivos.
### Qué aprendí
Aprendi sobre la rotacion de logs. zgrep para archivos comprimidos y bucle for para precisamente esos archivos.
### Qué me trabó
La verdad que fue un dato muy util descubrir los logs rotados, pero el tema del bucle for y sumar los conteos me costo demasiado, me descoloco mucho.
