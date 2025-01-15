# riduci-pdf
Uno script Bash per comprimere file PDF utilizzando `pdf2ps`, `ps2pdf` e Ghostscript (`gs`).  Permette all'utente di scegliere tra due livelli di compressione: normale o maggiore, con notifiche al termine del processo.
I due tipi di compressione possono essere utili se si vuole ridurre in un file molto contenuto a livello di byte, ed occupare meno memoria in invio di eMail.
## PDF Tool di compressione dei file
si appoggia al programma `Xsane` che deve essere installato sulla macchina in uso.
Si consiglia di utilizzare l'opzione Multipagina o CTRL+M, questo perché lo script cercherà il file generato `multipageproject.pdf`una volta scansionate le pagine e salvato il file pdf.
Lo script poi trasformerà a seconda delle necessita in due tipi di compressione, che avranno un peso in byte sicuramente più leggero del file originale, senza perdere troppo in qualità del contenuto. Ho deciso di fare questo script in quanto OpenSuse da già con un doppio passaggio la compressione normale ma avevo necessità di una compressione maggiore, proprio per poter spedire i file meno pesanti via eMail.
## 🎥 Video Dimostrativo

Guarda il video dimostrativo su [YouTube]([https://www.youtube.com/watch?v=4RtZ3rLAkbQ](https://youtu.be/4RtZ3rLAkbQ).

[![Guarda il Video su YouTube di come OpenSuse comprime il file](https://img.youtube.com/vi/4RtZ3rLAkbQ/0.jpg)]([https://www.youtube.com/watch?v=4RtZ3rLAkbQ])

[Qui invece come risolvere con lo script la compressione in 2 modalità]([https://www.youtube.com/channel/UC2ODtlWig0Dbi-XXYuNDq0w/community?lb=UgkxBdaCoFBE2dySVXndFRKz-3yDBEcdxON6])
[!(https://yt3.ggpht.com/EI87UMp1Ae6zsoyxw2EoTfR02vDUSGNxscr1IeVw0gieiqNnBaDqjISZKfY2CEzMYd9DxmS5GZk8-w=s215-c-fcrop64=1,41500000beafffff-rw-nd-v1)]([https://www.youtube.com/channel/UC2ODtlWig0Dbi-XXYuNDq0w/community?lb=UgkxBdaCoFBE2dySVXndFRKz-3yDBEcdxON6])

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

