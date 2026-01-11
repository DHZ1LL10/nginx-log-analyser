#!/bin/bash

# 1. Definir el archivo de logs (asegúrate que se llame así o cambia el nombre)
LOG_FILE="nginx-access.log.txt"

echo "  PORSCHE TELEMETRY & SECURITY REPORT  "
echo "============================================"

# 2. Top 5 Direcciones IP (Los visitantes)
echo -e "\n Top 5 IPs con más solicitudes:"
# awk '{print $1}': Toma la primera columna (IP)
# sort: Ordena para agrupar
# uniq -c: Cuenta los repetidos
# sort -nr: Ordena por número (n) en reversa (r) de mayor a menor
# head -n 5: Muestra solo los primeros 5
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

# 3. Top 5 Rutas Solicitadas (Qué están viendo)
echo -e "\n Top 5 Rutas más visitadas:"
awk '{print $7}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

# 4. Top 5 Códigos de Estado (Errores vs Éxitos)
echo -e "\n Top 5 Códigos de respuesta HTTP:"
awk '{print $9}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

# 5. Top 5 User Agents (Desde qué dispositivo/navegador)
# Aquí usamos -F\" para usar las comillas como separador, porque el User Agent tiene espacios
echo -e "\n Top 5 User Agents:"
awk -F\" '{print $6}' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

echo "============================================"
echo "Análisis completado."