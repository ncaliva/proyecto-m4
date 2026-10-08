#!/bin/bash

# ============================================
# monitor.sh
# Monitoreo de logs del sistema
# Autor: Nicolas Caliva
# Fecha: 2026-10-01
# ============================================

# Variables
FECHA=$(date +%Y-%m-%d)
HORA=$(date +%H:%M:%S)
HOSTNAME=$(hostname)
REPORT_DIR="$HOME/proyecto-m4/reports"
REPORT_FILE="$REPORT_DIR/$FECHA.md"
COUNT_LOG=$(wc -l < /var/log/auth.log)
SUDO_LOG=$(grep -c "sudo" /var/log/auth.log)
ERROR_SYSLOG=$(grep -ci "error" /var/log/syslog)
WARN_SYSLOG=$(grep -ci "warning" /var/log/syslog)
if [ -f "/var/log/kern.log" ]; then
    KERN_ERRORS=$(grep -ci "error" /var/log/kern.log)
else
    KERN_ERRORS="no disponible"
fi
TOTAL=0
for archivo in /var/log/auth.log*; do
    if [[ "$archivo" == *.gz ]]; then
        COUNT=$(zgrep -c "Failed password" "$archivo")
    else
        COUNT=$(grep -c "Failed password" "$archivo")
    fi
    TOTAL=$((TOTAL + COUNT))
done
FAILED_LOG=$TOTAL
EXEC_LOG="$HOME/proyecto-m4/monitor.log"

# Funciones
log_exec() {
echo "[$FECHA] $1"  >> "$EXEC_LOG"
    # escribe en monitor.log con timestamp
}

write_report() {
echo "$1" >> "$REPORT_FILE"
    # escribe en el reporte del día
}

# Inicio
log_exec "Iniciando monitoreo"
> "$REPORT_FILE"

write_report "# Reporte de Monitoreo — $FECHA"
write_report ""
write_report "**Hostname:** $HOSTNAME"
write_report "**Generado:** $FECHA $HORA"
write_report ""
write_report "## Resumen"
write_report "- Líneas totales en auth.log: $COUNT_LOG"
write_report "- Intentos fallidos de login: $FAILED_LOG"
write_report "- Comandos sudo ejecutados: $SUDO_LOG"
write_report ""
write_report "## Syslog"
write_report "- Errores: $ERROR_SYSLOG"
write_report "- Warnings: $WARN_SYSLOG"
write_report ""
write_report "## Kern.log"
write_report "- Errores de Kernel: $KERN_ERRORS"
log_exec "Monitoreo finalizado"
