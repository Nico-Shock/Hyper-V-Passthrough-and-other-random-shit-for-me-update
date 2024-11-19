## *Diese Repo wird nicht mehr weitergeführt, da sich hier nur irgendwelche Tools und anderer Mist ansammelt. Aber ich lasse trotzdem alles, wie es jetzt ist.*

## Was der Skript macht:

- Der Skript ist ein einfacher Skript, der automatisch Hyper-V in Windows 10/11 aktiviert und die Services aktiviert. Die Services können mit ```bcdedit /set hypervisorlaunchtype off``` wieder deaktiviert werden, um in anderen Hypervisorn bessere Performance zu bekommen.

### Empfehlung:

- Ladet euch [dieses](https://github.com/ny4rlk0/WindowsMediaCreationTool) Tool herunter, das automatisch eine Windows 10/11 ISO herunterlädt, ohne Benutzerinteraktion. (GEHT NICHT MIT DEM EASY_GPU_PV_TOOL. LADET EUCH DAFÜR OFIZIELL [HIER](https://www.microsoft.com/de-de/software-download/windows11) DIE ISO RUNTER)
- Nutzt [ImgBurn](https://download.imgburn.com/SetupImgBurn_2.5.8.0.exe), um eine autounattend.xml auf die ISO zu schreiben, die Windows automatisch installieren wird. Alternativ könnt ihr auch [folder2iso](https://www.trustfm.net/software/utilities/Folder2Iso.php) nutzen. (MACHT ES NICHT WINDOWS WIRD NICHT BOOTEN)

### Weitere Infos:

- Die autounattend.xml installiert immer die Pro Edition und installiert alles auf Deutsch.
- Ihr könnt [hier](https://schneegans.de/windows/unattend-generator/) eure eigene autounattend.xml erstellen.
- [Hier](https://mega.nz/file/QbFThJaI#NvYXHXOgDFt8a8qQpJeq3mGds4zvBiYvkweqTuXFWvA) sind weitere Daten (+ tutorial) für Hyper-V gpu passthrough.
- Ihr könnt auch diese Daten [hier](https://github.com/jamesstringerparsec/Easy-GPU-PV) nutzen, um die Insterllation zu erleichtern.

# ZUSAMMENFASSUNG WAS MAN NUTZEN SOLLTE:

- [Hier](https://mega.nz/file/cb8mRR6A#beEGn_GP9c7B-4T9UOLHMf7xMiwqhGUvAPrbXQLH3bM) könnt ihr manuell selber Hyper-V GPU Passthrough machen.
- [Hier](https://github.com/jamesstringerparsec/Easy-GPU-PV) könnt ihr Windows automatisch installieren lassen.
- [Hier](github.com/Nico-Shock/Hyper-V-gpu-passthrough-and-other-random-shit-for-me-/releases/download/v.1.0.2/enable-hyper-v_pro.bat) könnt ihr Hyper-V für Windows 10/11 Pro aktivieren und [Hier](github.com/Nico-Shock/Hyper-V-gpu-passthrough-and-other-random-shit-for-me-/releases/download/v.1.0.2/enable-hyper-v_home.bat) für Windows 10/11 Home.
- [Hier](https://github.com/fdcastel/Hyper-V-Automation) könnt ihr euch an ein paar anderen Scripts orientieren.
