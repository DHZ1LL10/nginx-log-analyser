# Telemetry - Nginx Log Analyser

Herramienta de **análisis forense automatizado** escrita en Bash Scripting. Procesada logs de servidores Nginx para extraer métricas de seguridad y tráfico, simulando un sistema de telemetría de alto rendimiento.

## Características
Este script analiza archivos de log en crudo y extrae:
- **Top IPs:** Identificación de origen del tráfico.
- **Rutas Críticas:** Detección de endpoints más solicitados.
- **Códigos de Estado:** Monitoreo de salud (200) vs Errores (404/500).
- **User Agents:** Identificación de bots y dispositivos.

## Uso (Quick Start)

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/DHZ1LL10/nginx-log-analyser.git](https://github.com/DHZ1LL10/nginx-log-analyser.git)

   https://roadmap.sh/projects/nginx-log-analyser

   <img width="773" height="968" alt="image" src="https://github.com/user-attachments/assets/61a70644-ad9e-4a8e-be75-fc1697826c70" />
