#!/bin/bash

# ==============================================================================
# Nexo Dynamic macOS Revert Script
# Autor: Kenif - Programmer (Powered By ElNexoCenter)
# Descripción: Restaura los valores por defecto de macOS tras la optimización.
# ==============================================================================

if [[ $EUID -ne 0 ]]; then
   echo "Por favor, ejecuta este script con sudo (ej: sudo sh revert.sh)"
   exit 1
fi

echo "--- Restaurando configuración original de macOS ---"

# 1. RESTAURAR INTERFAZ
echo "[1/4] Restaurando efectos visuales..."
defaults delete com.apple.universalaccess reduceMotion
defaults delete com.apple.universalaccess reduceTransparency
defaults delete NSGlobalDomain NSAutomaticWindowAnimationsEnabled
defaults delete -g QLPanelAnimationDuration
defaults delete com.apple.dock launchanim
defaults delete com.apple.dock expose-animation-duration
defaults delete NSGlobalDomain NSWindowResizeTime

# 2. RESTAURAR INPUT
echo "[2/4] Restaurando configuración de Mouse y Teclado..."
defaults write .GlobalPreferences com.apple.mouse.scaling 1.5
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# 3. RESTAURAR ENERGÍA
echo "[3/4] Restaurando perfiles de energía..."
pmset -a disablesleep 0
pmset -a proximitywake 1
pmset -a tcpkeepalive 1
pmset -a powernap 1

# 4. RESTAURAR RED Y SISTEMA
echo "[4/4] Restaurando red y Dock..."
sysctl -w net.inet.tcp.delayed_ack=3
dscacheutil -flushcache
killall -HUP mDNSResponder
killall Dock

echo "--------------------------------------------------------"
echo "¡Restauración completada con éxito!"
echo "--------------------------------------------------------"
