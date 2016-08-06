## display weather

```
curl -4 http://wttr.in/Lille
```

## info system

Carte mère et Bios (en root) : `dmidecode`

RAM : `free -m`

Processeur : `lscpu - cat /proc/cpuinfo`

Carte graphique : `lspci | grep VGA`

Liste des périphériques du bus PCI : `lspci`

Liste des périphériques USB : `lsusb`

Interfaces réseau : `ifconfig`

Espace disque et pourcentage d'occupation : `df -h`

Partition swap : `swapon -s`

Machine (noyau, nom de machine...) : `uname -a`

Informations de fonctionnement : `uptime`, `top`, `ps`, `who`, `vmstat` ...

## download images website

```
wget -r -linf -k -p -E -H -np -A.jpg http://www.onemanga.com/Tales_of_Symphonia/
```
   
## extract sound of video

```
ffmpeg -i inputfile.flv -acodec copy output.mp3
```

## merge multiple pdf

```
ghostscript -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sPAPERSIZE=a4 -sOutputFile=resultat.pdf fichier1.pdf fichier2.pdf fichier3.pdf fichier4.pdf
```
