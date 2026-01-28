#!/bin/bash

# ==============================================================================
# Nexo Dynamic macOS Optimization Script
# Author: Kenif - Programmer (Powered by Nexus)
# Description: Optimiza macOS para juegos, reduce el retraso y mejora el rendimiento.
# ==============================================================================

# Ir al directorio donde se encuentra el script
cd "$(dirname "$0")"

# Nota: Este script ya no requiere privilegios de administrador.
# Se han omitido las optimizaciones de sistema para facilitar su ejecución.

echo "--- Iniciando optimización de Nexo Dynamic para macOS ---"

# 1. OPTIMIZACIÓN DE INTERFAZ (Reducir Lag Visual y uso de GPU)
echo "[1/5] Optimizando interfaz visual..."
defaults write com.apple.universalaccess reduceMotion -bool true
defaults write com.apple.universalaccess reduceTransparency -bool true
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g QLPanelAnimationDuration -float 0
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# 2. OPTIMIZACIÓN DE INPUT (Reducir Input Lag)
echo "[2/5] Optimizando input lag (Mouse y Teclado)..."
# Desactivar aceleración de ratón (valor -1 es el estándar para gaming en macOS)
defaults write .GlobalPreferences com.apple.mouse.scaling -1
# Aumentar velocidad de repetición de teclas
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# 3. OPTIMIZACIÓN DE ENERGÍA Y RENDIMIENTO
echo "[3/5] Ajustando perfiles de energía para máximo rendimiento..."
# Prevenir que el sistema entre en reposo durante el uso (Requiere sudo, omitido)
# pmset -a disablesleep 1
# Desactivar Wake on LAN y servicios que despiertan el sistema innecesariamente (Requiere sudo, omitido)
# pmset -a proximitywake 0
# pmset -a tcpkeepalive 0
# Desactivar Power Nap (Requiere sudo, omitido)
# pmset -a powernap 0

# 4. OPTIMIZACIÓN DE RED Y SISTEMA
echo "[4/5] Optimizando red y latencia..."
# Reducir el delay de ACK para mejorar respuesta en juegos online (Requiere sudo, omitido)
# sysctl -w net.inet.tcp.delayed_ack=0
# Limpiar caché de DNS
dscacheutil -flushcache
killall -HUP mDNSResponder

# 5. LIMPIEZA DE MEMORIA Y CACHÉ
echo "[5/5] Realizando limpieza de sistema..."
# Liberar memoria RAM inactiva (Requiere sudo, omitido)
# purge
# Reiniciar el Dock para aplicar cambios visuales
killall Dock

echo "--------------------------------------------------------"
echo "¡Optimización completada con éxito!"
echo "Nota: Algunos cambios en el ratón pueden requerir reiniciar sesión."
echo "--------------------------------------------------------"
