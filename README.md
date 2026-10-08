# Proyecto M4 — Monitoreo de Logs

## Objetivo
El script que creé tiene como objetivo hacer un monitoreo con inicio y fin de 
eventos de logs de sistema y de intento de login.

## Arquitectura
- `monitor.sh` → lee los logs del sistema.
- `reports/` → guarda los resultados.
- `monitor.log` → registra cuándo corrió el script.

## Decisiones de diseño
Cuando se escribe en reports y en monitor.log se decidio utilizar >> debido que 
necesitamos anotar en la ultima linea cada registro sobre los log, porque 
sobrescribir con > borraria el historial. Se tuvo que crear una variable para 
log rotado, debido que los archivos se llenan y siguen creando unos nuevos.

## Cómo ejecutarlo
1. Otorgar permisos al usuario: `chmod +x monitor.sh`
2. Para correrlo: `~/proyecto-m4/monitor.sh`
3. Configurar cron para automatización diaria:
   - Abrir crontab: `crontab -e`
   - Agregar la línea: `0 3 * * * /home/kyonso/proyecto-m4/monitor.sh`
## Resultados
Esto es un ejemplo del dia 2026-10-07:
# Reporte de Monitoreo — 2026-10-07
**Hostname:** kyonso-ubuntu
**Generado:** 2026-10-07 19:20:14
## Resumen
- Líneas totales en auth.log: 44
- Intentos fallidos de login: 5
- Comandos sudo ejecutados: 12
## Syslog
- Errores: 11
- Warnings: 125
## Kern.log
- Errores de Kernel: 1

## Conclusiones
Aprendí muchas tareas y un compilado de tareas de Linux que hace meses no 
sabía que existía. Mi primer proyecto incluso mi primer documento. Mejoraría 
más las variables y conceptos que quizás no tuve en cuenta. Me llevo para el 
próximo ya como realizarlo en su totalidad para hacerlo más 
independientemente.
