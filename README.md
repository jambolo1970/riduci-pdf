# riduci-pdf
Uno script Bash per comprimere file PDF utilizzando `pdf2ps`, `ps2pdf` e Ghostscript (`gs`).  Permette all'utente di scegliere tra due livelli di compressione: normale o maggiore, con notifiche al termine del processo.
## PDF Compression Tool
S
## Funzionalità
- **Compressione normale**: utilizza `pdf2ps` e `ps2pdf` per ridurre la dimensione del file PDF.
- **Compressione maggiore**: utilizza Ghostscript con impostazioni avanzate per una compressione più aggressiva.
- **Notifiche desktop**: lo script invia una notifica al vassoio di sistema con l'esito della compressione.

## Requisiti
- Linux (testato su Linux Mint e openSUSE)
- Ghostscript (`gs`)
- `notify-send` (parte di `libnotify-bin`)
- `poppler-utils` (per `pdf2ps` e `ps2pdf`)
- `Xsane` (per scansionare le pagine da scanner o multifunzione)
- Vanno installati i driver del vostro scanner o Stampante multifunzione

### Installazione dei requisiti
#### Su distribuzioni Debian-based (ad esempio, Ubuntu e Linux Mint):
```bash
sudo apt update
sudo apt install ghostscript libnotify-bin poppler-utils
```
#### Su OpenSuse
o tramite Yast o a terminale
```bash
sudo zypper install ghostscript libnotify-tools poppler-tools
```

