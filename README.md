Este comando le dice a macOS que estos archivos son programas que se pueden correr:

bash

chmod +x ~/Desktop/"Nexo-Dynamic-macOS-main"/*.command

2. Quitar el bloqueo de seguridad (Cuarentena)
Si los archivos fueron descargados o movidos desde Windows, macOS los marca como "peligrosos". Esto elimina esa marca:

bash

xattr -dr com.apple.quarantine ~/Desktop/"Nexo-Dynamic-macOS-main"




VIDEO TUTORIAL!
https://www.youtube.com/watch?v=TH_SX_DvyX4
